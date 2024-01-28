local UgCore = exports['ug-core']:GetCore()

local lastSkin, cam, isCameraActive
local firstSpawn, zoomOffset, camOffset, heading = true, 0.0, 0.0, 90.0

RegisterNetEvent('ug-core:PlayerLoaded')
AddEventHandler('ug-core:PlayerLoaded', function(_, _, skin)
    TriggerServerEvent('ug-skin:SetWeight', skin)
end)

function OpenMenu(submitCb, cancelCb, restrict)
    local playerPed = PlayerPedId()

    TriggerEvent('ug-skinChanger:GetSkin', function(skin) lastSkin = skin end)
    TriggerEvent('ug-skinChanger:GetData', function(components, maxVals)
        local elements = {}
        local _components = {}

        -- Restrict menu
        if restrict == nil then
            for i = 1, #components, 1 do
                _components[i] = components[i]
            end
        else
            for i = 1, #components, 1 do
                local found = false

                for j = 1, #restrict, 1 do
                    if components[i].name == restrict[j] then
                        found = true
                    end
                end

                if found then
                    table.insert(_components, components[i])
                end
            end
        end
        -- Insert elements
        for i = 1, #_components, 1 do
            local value = _components[i].value
            local componentId = _components[i].componentId

            if componentId == 0 then
                value = GetPedPropIndex(playerPed, _components[i].componentId)
            end

            local data = {
                label = _components[i].label,
                name = _components[i].name,
                value = value,
                min = _components[i].min,
                textureof = _components[i].textureof,
                zoomOffset = _components[i].zoomOffset,
                camOffset = _components[i].camOffset,
                type = 'slider'
            }

            for k, v in pairs(maxVals) do
                if k == _components[i].name then
                    data.max = v
                    break
                end
            end

            elements[#elements + 1] = data
        end

        CreateSkinCam()
        zoomOffset = _components[1].zoomOffset
        camOffset = _components[1].camOffset

        UgCore.Menus.Functions.OpenMenu('default', GetCurrentResourceName(), 'skin', {
            title = Languages.GetTranslation('skin_menu'),
            align = 'bottom-left',
            elements = elements
        }, function(data, menu)
            TriggerEvent('ug-skinChanger:GetSkin', function(skin) lastSkin = skin end)
            submitCb(data, menu)
            DeleteSkinCam()
        end, function(data, menu)
            menu.Functions.Close()
            DeleteSkinCam()
            TriggerEvent('ug-skinChanger:LoadSkin', lastSkin)
            if cancelCb ~= nil then
                cancelCb(data, menu)
            end
        end, function(data, menu)
            local skin, components, maxVals
            TriggerEvent('ug-skinChanger:GetSkin', function(getSkin) skin = getSkin end)
            zoomOffset = data.current.zoomOffset
            camOffset = data.current.camOffset

            if skin[data.current.name] ~= data.current.value then
                TriggerEvent('ug-skinChanger:Change', data.current.name, data.current.value)

                -- Update max values
                TriggerEvent('ug-skinChanger:GetData', function(comp, max)
                    components, maxVals = comp, max
                end)

                local newData = {}

                for i = 1, #elements, 1 do
                    newData = {}
                    newData.max = maxVals[elements[i].name]

                    if elements[i].textureof ~= nil and data.current.name == elements[i].textureof then
                        newData.value = 0
                    end

                    menu.Functions.Update({ name = elements[i].name }, newData)
                end

                menu.Functions.Refresh()
            end
        end, function()
            DeleteSkinCam()
        end)
    end)
    UgCore.Functions.Notify('Skin Menu', Languages.GetTranslation('use_rotate_view'), 'info', 20000)
end

function CreateSkinCam()
    if not DoesCamExist(cam) then
        cam = CreateCam('DEFAULT_SCRIPTED_CAMERA', true)
    end

    local playerPed = PlayerPedId()

    SetCamActive(cam, true)
    RenderScriptCams(true, true, 500, true, true)

    isCameraActive = true
    SetCamCoord(cam, GetEntityCoords(playerPed))
    SetCamRot(cam, 0.0, 0.0, 270.0, true)
    SetEntityHeading(playerPed, 0.0)
end

function DeleteSkinCam()
    isCameraActive = false
    SetCamActive(cam, false)
    RenderScriptCams(false, true, 500, true, true)
    cam = nil
end

CreateThread(function()
    local customPI <const> = math.pi / 180.0
    while true do
        local sleep = 1500
        if isCameraActive then
            sleep = 0
            DisableControlAction(2, 30, true)
            DisableControlAction(2, 31, true)
            DisableControlAction(2, 32, true)
            DisableControlAction(2, 33, true)
            DisableControlAction(2, 34, true)
            DisableControlAction(2, 35, true)
            DisableControlAction(0, 25, true) -- Input Aim
            DisableControlAction(0, 24, true) -- Input Attack

            local playerPed   = PlayerPedId()
            local coords      = GetEntityCoords(playerPed)

            local angle       = heading * customPI
            local theta       = {
                x = math.cos(angle),
                y = math.sin(angle)
            }

            local pos         = {
                x = coords.x + (zoomOffset * theta.x),
                y = coords.y + (zoomOffset * theta.y)
            }

            local angleToLook = heading - 140.0
            if angleToLook > 360 then
                angleToLook = angleToLook - 360
            elseif angleToLook < 0 then
                angleToLook = angleToLook + 360
            end

            angleToLook = angleToLook * customPI
            local thetaToLook = {
                x = math.cos(angleToLook),
                y = math.sin(angleToLook)
            }

            local posToLook = {
                x = coords.x + (zoomOffset * thetaToLook.x),
                y = coords.y + (zoomOffset * thetaToLook.y)
            }

            SetCamCoord(cam, pos.x, pos.y, coords.z + camOffset)
            PointCamAtCoord(cam, posToLook.x, posToLook.y, coords.z + camOffset)
        end
        Wait(sleep)
    end
end)

CreateThread(function()
    local angle = 90

    while true do
        local sleep = 1500

        if isCameraActive then
            sleep = 0
            if IsControlPressed(0, 209) then
                angle = angle - 1
            elseif IsControlPressed(0, 19) then
                angle = angle + 1
            end

            if angle > 360 then
                angle = angle - 360
            elseif angle < 0 then
                angle = angle + 360
            end

            heading = angle + 0.0
        end
        Wait(sleep)
    end
end)

function OpenSaveableMenu(submitCb, cancelCb, restrict)
    TriggerEvent('ug-skinChanger:GetSkin', function(skin) lastSkin = skin end)

    OpenMenu(function(data, menu)
        menu.Functions.Close()
        DeleteSkinCam()

        TriggerEvent('ug-skinChanger:GetSkin', function(skin)
            TriggerServerEvent('ug-skin:Save', skin)

            if submitCb ~= nil then
                submitCb(data, menu)
            end
        end)
    end, cancelCb, restrict)
end

AddEventHandler('ug-skin:ResetFirstSpawn', function()
    firstSpawn = true
    UgCore.PlayerLoaded = false
end)

AddEventHandler('ug-skin:PlayerRegistered', function()
    CreateThread(function()
        while not UgCore.PlayerLoaded do
            Wait(100)
        end

        if firstSpawn then
            UgCore.Callbacks.TriggerCallback('ug-skin:GetPlayerSkin', function(skin)
                if skin == nil then
                    TriggerEvent('ug-skinChanger:LoadSkin', { sex = 0 }, OpenSaveableMenu)
                    Wait(100)
                else
                    TriggerEvent('ug-skinChanger:LoadSkin', skin)
                    Wait(100)
                end
            end)

            firstSpawn = false
        end
    end)
end)

RegisterNetEvent('ug-core:PlayerLoaded')
AddEventHandler('ug-core:PlayerLoaded', function()
    UgCore.PlayerLoaded = true
end)

AddEventHandler('ug-skin:GetLastSkin', function(cb) cb(lastSkin) end)
AddEventHandler('ug-skin:SetLastSkin', function(skin) lastSkin = skin end)

RegisterNetEvent('ug-skin:OpenMenu')
AddEventHandler('ug-skin:OpenMenu', function(submitCb, cancelCb)
    OpenMenu(submitCb, cancelCb, nil)
end)

RegisterNetEvent('ug-skin:OpenRestrictedMenu')
AddEventHandler('ug-skin:OpenRestrictedMenu', function(submitCb, cancelCb, restrict)
    OpenMenu(submitCb, cancelCb, restrict)
end)

RegisterNetEvent('ug-skin:OpenSaveableMenu')
AddEventHandler('ug-skin:OpenSaveableMenu', function(submitCb, cancelCb)
    OpenSaveableMenu(submitCb, cancelCb, nil)
end)

RegisterNetEvent('ug-skin:OpenSaveableRestrictedMenu')
AddEventHandler('ug-skin:OpenSaveableRestrictedMenu', function(submitCb, cancelCb, restrict)
    OpenSaveableMenu(submitCb, cancelCb, restrict)
end)

RegisterNetEvent('ug-skin:RequestSaveSkin')
AddEventHandler('ug-skin:RequestSaveSkin', function()
    TriggerEvent('ug-skinChanger:GetSkin', function(skin)
        TriggerServerEvent('ug-skin:ResponseSaveSkin', skin)
    end)
end)