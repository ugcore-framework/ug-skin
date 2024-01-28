fx_version 'cerulean'
game 'gta5'
lua54 'yes'

name 'ug-skin'
description 'Skin Manager for UgCore by UgDev'
author 'UgDev'
version '3.5'
url 'https://github.com/UgDevOfc/ug-skin'

shared_scripts {
    '@ug-core/languages.lua',
    'languages/*.lua',
    'config.lua'
}

client_scripts {
    'client/skinchanger.lua',
    'client/main.lua'
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/main.lua',
}

dependencies {
    'oxmysql',
    'ug-core'
}