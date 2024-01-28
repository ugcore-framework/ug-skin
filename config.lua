Config          = { }

Config.Language = 'en'

Config.BackpackWeight = {
    [40] = 16,
	[41] = 20,
	[44] = 25,
	[45] = 23
}

Config.Components = { {
    label = Languages.GetTranslation('sex'),
    name = 'sex',
    value = 0,
    min = 0,
    zoomOffset = 0.6,
    camOffset = 0.65
}, {
    label = Languages.GetTranslation('mom'),
    name = 'mom',
    value = 21,
    min = 21,
    zoomOffset = 0.6,
    camOffset = 0.65
}, {
    label = Languages.GetTranslation('dad'),
    name = 'dad',
    value = 0,
    min = 0,
    zoomOffset = 0.6,
    camOffset = 0.65
}, {
    label = Languages.GetTranslation('resemblance'),
    name = 'face_md_weight',
    value = 50,
    min = 0,
    zoomOffset = 0.6,
    camOffset = 0.65
}, {
    label = Languages.GetTranslation('skin_tone'),
    name = 'skin_md_weight',
    value = 50,
    min = 0,
    zoomOffset = 0.6,
    camOffset = 0.65
}, {
    label = Languages.GetTranslation('nose_1'),
    name = 'nose_1',
    value = 0,
    min = -10,
    zoomOffset = 0.6,
    camOffset = 0.65
}, {
    label = Languages.GetTranslation('nose_2'),
    name = 'nose_2',
    value = 0,
    min = -10,
    zoomOffset = 0.6,
    camOffset = 0.65
}, {
    label = Languages.GetTranslation('nose_3'),
    name = 'nose_3',
    value = 0,
    min = -10,
    zoomOffset = 0.6,
    camOffset = 0.65
}, {
    label = Languages.GetTranslation('nose_4'),
    name = 'nose_4',
    value = 0,
    min = -10,
    zoomOffset = 0.6,
    camOffset = 0.65
}, {
    label = Languages.GetTranslation('nose_5'),
    name = 'nose_5',
    value = 0,
    min = -10,
    zoomOffset = 0.6,
    camOffset = 0.65
}, {
    label = Languages.GetTranslation('nose_6'),
    name = 'nose_6',
    value = 0,
    min = -10,
    zoomOffset = 0.6,
    camOffset = 0.65
}, {
    label = Languages.GetTranslation('cheeks_1'),
    name = 'cheeks_1',
    value = 0,
    min = -10,
    zoomOffset = 0.4,
    camOffset = 0.65
}, {
    label = Languages.GetTranslation('cheeks_2'),
    name = 'cheeks_2',
    value = 0,
    min = -10,
    zoomOffset = 0.4,
    camOffset = 0.65
}, {
    label = Languages.GetTranslation('cheeks_3'),
    name = 'cheeks_3',
    value = 0,
    min = -10,
    zoomOffset = 0.4,
    camOffset = 0.65
}, {
    label = Languages.GetTranslation('lip_fullness'),
    name = 'lip_thickness',
    value = 0,
    min = -10,
    zoomOffset = 0.4,
    camOffset = 0.65
}, {
    label = Languages.GetTranslation('jaw_bone_width'),
    name = 'jaw_1',
    value = 0,
    min = -10,
    zoomOffset = 0.4,
    camOffset = 0.65
}, {
    label = Languages.GetTranslation('jaw_bone_length'),
    name = 'jaw_2',
    value = 0,
    min = -10,
    zoomOffset = 0.4,
    camOffset = 0.65
}, {
    label = Languages.GetTranslation('chin_height'),
    name = 'chin_1',
    value = 0,
    min = -10,
    zoomOffset = 0.4,
    camOffset = 0.65
}, {
    label = Languages.GetTranslation('chin_length'),
    name = 'chin_2',
    value = 0,
    min = -10,
    zoomOffset = 0.4,
    camOffset = 0.65
}, {
    label = Languages.GetTranslation('chin_width'),
    name = 'chin_3',
    value = 0,
    min = -10,
    zoomOffset = 0.4,
    camOffset = 0.65
}, {
    label = Languages.GetTranslation('chin_hole'),
    name = 'chin_4',
    value = 0,
    min = -10,
    zoomOffset = 0.4,
    camOffset = 0.65
}, {
    label = Languages.GetTranslation('neck_thickness'),
    name = 'neck_thickness',
    value = 0,
    min = -10,
    zoomOffset = 0.4,
    camOffset = 0.65
}, {
    label = Languages.GetTranslation('hair_1'),
    name = 'hair_1',
    value = 0,
    min = 0,
    zoomOffset = 0.6,
    camOffset = 0.65
}, {
    label = Languages.GetTranslation('hair_2'),
    name = 'hair_2',
    value = 0,
    min = 0,
    zoomOffset = 0.6,
    camOffset = 0.65
}, {
    label = Languages.GetTranslation('hair_color_1'),
    name = 'hair_color_1',
    value = 0,
    min = 0,
    zoomOffset = 0.6,
    camOffset = 0.65
}, {
    label = Languages.GetTranslation('hair_color_2'),
    name = 'hair_color_2',
    value = 0,
    min = 0,
    zoomOffset = 0.6,
    camOffset = 0.65
}, {
    label = Languages.GetTranslation('tshirt_1'),
    name = 'tshirt_1',
    value = 0,
    min = 0,
    zoomOffset = 0.75,
    camOffset = 0.15,
    componentId = 8
}, {
    label = Languages.GetTranslation('tshirt_2'),
    name = 'tshirt_2',
    value = 0,
    min = 0,
    zoomOffset = 0.75,
    camOffset = 0.15,
    textureof = 'tshirt_1'
}, {
    label = Languages.GetTranslation('torso_1'),
    name = 'torso_1',
    value = 0,
    min = 0,
    zoomOffset = 0.75,
    camOffset = 0.15,
    componentId = 11
}, {
    label = Languages.GetTranslation('torso_2'),
    name = 'torso_2',
    value = 0,
    min = 0,
    zoomOffset = 0.75,
    camOffset = 0.15,
    textureof = 'torso_1'
}, {
    label = Languages.GetTranslation('decals_1'),
    name = 'decals_1',
    value = 0,
    min = 0,
    zoomOffset = 0.75,
    camOffset = 0.15,
    componentId = 10
}, {
    label = Languages.GetTranslation('decals_2'),
    name = 'decals_2',
    value = 0,
    min = 0,
    zoomOffset = 0.75,
    camOffset = 0.15,
    textureof = 'decals_1'
}, {
    label = Languages.GetTranslation('arms'),
    name = 'arms',
    value = 0,
    min = 0,
    zoomOffset = 0.75,
    camOffset = 0.15
}, {
    label = Languages.GetTranslation('arms_2'),
    name = 'arms_2',
    value = 0,
    min = 0,
    zoomOffset = 0.75,
    camOffset = 0.15
}, {
    label = Languages.GetTranslation('pants_1'),
    name = 'pants_1',
    value = 0,
    min = 0,
    zoomOffset = 0.8,
    camOffset = -0.5,
    componentId = 4
}, {
    label = Languages.GetTranslation('pants_2'),
    name = 'pants_2',
    value = 0,
    min = 0,
    zoomOffset = 0.8,
    camOffset = -0.5,
    textureof = 'pants_1'
}, {
    label = Languages.GetTranslation('shoes_1'),
    name = 'shoes_1',
    value = 0,
    min = 0,
    zoomOffset = 0.8,
    camOffset = -0.8,
    componentId = 6
}, {
    label = Languages.GetTranslation('shoes_2'),
    name = 'shoes_2',
    value = 0,
    min = 0,
    zoomOffset = 0.8,
    camOffset = -0.8,
    textureof = 'shoes_1'
}, {
    label = Languages.GetTranslation('mask_1'),
    name = 'mask_1',
    value = 0,
    min = 0,
    zoomOffset = 0.6,
    camOffset = 0.65,
    componentId = 1
}, {
    label = Languages.GetTranslation('mask_2'),
    name = 'mask_2',
    value = 0,
    min = 0,
    zoomOffset = 0.6,
    camOffset = 0.65,
    textureof = 'mask_1'
}, {
    label = Languages.GetTranslation('bproof_1'),
    name = 'bproof_1',
    value = 0,
    min = 0,
    zoomOffset = 0.75,
    camOffset = 0.15,
    componentId = 9
}, {
    label = Languages.GetTranslation('bproof_2'),
    name = 'bproof_2',
    value = 0,
    min = 0,
    zoomOffset = 0.75,
    camOffset = 0.15,
    textureof = 'bproof_1'
}, {
    label = Languages.GetTranslation('chain_1'),
    name = 'chain_1',
    value = 0,
    min = 0,
    zoomOffset = 0.6,
    camOffset = 0.65,
    componentId = 7
}, {
    label = Languages.GetTranslation('chain_2'),
    name = 'chain_2',
    value = 0,
    min = 0,
    zoomOffset = 0.6,
    camOffset = 0.65,
    textureof = 'chain_1'
}, {
    label = Languages.GetTranslation('helmet_1'),
    name = 'helmet_1',
    value = -1,
    min = -1,
    zoomOffset = 0.6,
    camOffset = 0.65,
    componentId = 0
}, {
    label = Languages.GetTranslation('helmet_2'),
    name = 'helmet_2',
    value = 0,
    min = 0,
    zoomOffset = 0.6,
    camOffset = 0.65,
    textureof = 'helmet_1'
}, {
    label = Languages.GetTranslation('glasses_1'),
    name = 'glasses_1',
    value = 0,
    min = 0,
    zoomOffset = 0.6,
    camOffset = 0.65,
    componentId = 1
}, {
    label = Languages.GetTranslation('glasses_2'),
    name = 'glasses_2',
    value = 0,
    min = 0,
    zoomOffset = 0.6,
    camOffset = 0.65,
    textureof = 'glasses_1'
}, {
    label = Languages.GetTranslation('watches_1'),
    name = 'watches_1',
    value = -1,
    min = -1,
    zoomOffset = 0.75,
    camOffset = 0.15,
    componentId = 6
}, {
    label = Languages.GetTranslation('watches_2'),
    name = 'watches_2',
    value = 0,
    min = 0,
    zoomOffset = 0.75,
    camOffset = 0.15,
    textureof = 'watches_1'
}, {
    label = Languages.GetTranslation('bracelets_1'),
    name = 'bracelets_1',
    value = -1,
    min = -1,
    zoomOffset = 0.75,
    camOffset = 0.15,
    componentId = 7
}, {
    label = Languages.GetTranslation('bracelets_2'),
    name = 'bracelets_2',
    value = 0,
    min = 0,
    zoomOffset = 0.75,
    camOffset = 0.15,
    textureof = 'bracelets_1'
}, {
    label = Languages.GetTranslation('bag'),
    name = 'bags_1',
    value = 0,
    min = 0,
    zoomOffset = 0.75,
    camOffset = 0.15,
    componentId = 5
}, {
    label = Languages.GetTranslation('bag_color'),
    name = 'bags_2',
    value = 0,
    min = 0,
    zoomOffset = 0.75,
    camOffset = 0.15,
    textureof = 'bags_1'
}, {
    label = Languages.GetTranslation('eye_color'),
    name = 'eye_color',
    value = 0,
    min = 0,
    zoomOffset = 0.4,
    camOffset = 0.65
}, {
    label = Languages.GetTranslation('eye_squint'),
    name = 'eye_squint',
    value = 0,
    min = -10,
    zoomOffset = 0.4,
    camOffset = 0.65
}, {
    label = Languages.GetTranslation('eyebrow_size'),
    name = 'eyebrows_2',
    value = 0,
    min = 0,
    zoomOffset = 0.4,
    camOffset = 0.65
}, {
    label = Languages.GetTranslation('eyebrow_type'),
    name = 'eyebrows_1',
    value = 0,
    min = 0,
    zoomOffset = 0.4,
    camOffset = 0.65
}, {
    label = Languages.GetTranslation('eyebrow_color_1'),
    name = 'eyebrows_3',
    value = 0,
    min = 0,
    zoomOffset = 0.4,
    camOffset = 0.65
}, {
    label = Languages.GetTranslation('eyebrow_color_2'),
    name = 'eyebrows_4',
    value = 0,
    min = 0,
    zoomOffset = 0.4,
    camOffset = 0.65
}, {
    label = Languages.GetTranslation('eyebrow_height'),
    name = 'eyebrows_5',
    value = 0,
    min = -10,
    zoomOffset = 0.4,
    camOffset = 0.65
}, {
    label = Languages.GetTranslation('eyebrow_depth'),
    name = 'eyebrows_6',
    value = 0,
    min = -10,
    zoomOffset = 0.4,
    camOffset = 0.65
}, {
    label = Languages.GetTranslation('makeup_type'),
    name = 'makeup_1',
    value = 0,
    min = 0,
    zoomOffset = 0.4,
    camOffset = 0.65
}, {
    label = Languages.GetTranslation('makeup_thickness'),
    name = 'makeup_2',
    value = 0,
    min = 0,
    zoomOffset = 0.4,
    camOffset = 0.65
}, {
    label = Languages.GetTranslation('makeup_color_1'),
    name = 'makeup_3',
    value = 0,
    min = 0,
    zoomOffset = 0.4,
    camOffset = 0.65
}, {
    label = Languages.GetTranslation('makeup_color_2'),
    name = 'makeup_4',
    value = 0,
    min = 0,
    zoomOffset = 0.4,
    camOffset = 0.65
}, {
    label = Languages.GetTranslation('lipstick_type'),
    name = 'lipstick_1',
    value = 0,
    min = 0,
    zoomOffset = 0.4,
    camOffset = 0.65
}, {
    label = Languages.GetTranslation('lipstick_thickness'),
    name = 'lipstick_2',
    value = 0,
    min = 0,
    zoomOffset = 0.4,
    camOffset = 0.65
}, {
    label = Languages.GetTranslation('lipstick_color_1'),
    name = 'lipstick_3',
    value = 0,
    min = 0,
    zoomOffset = 0.4,
    camOffset = 0.65
}, {
    label = Languages.GetTranslation('lipstick_color_2'),
    name = 'lipstick_4',
    value = 0,
    min = 0,
    zoomOffset = 0.4,
    camOffset = 0.65
}, {
    label = Languages.GetTranslation('ear_accessories'),
    name = 'ears_1',
    value = -1,
    min = -1,
    zoomOffset = 0.4,
    camOffset = 0.65,
    componentId = 2
}, {
    label = Languages.GetTranslation('ear_accessories_color'),
    name = 'ears_2',
    value = 0,
    min = 0,
    zoomOffset = 0.4,
    camOffset = 0.65,
    textureof = 'ears_1'
}, {
    label = Languages.GetTranslation('chest_hair'),
    name = 'chest_1',
    value = 0,
    min = 0,
    zoomOffset = 0.75,
    camOffset = 0.15
}, {
    label = Languages.GetTranslation('chest_hair_1'),
    name = 'chest_2',
    value = 0,
    min = 0,
    zoomOffset = 0.75,
    camOffset = 0.15
}, {
    label = Languages.GetTranslation('chest_color'),
    name = 'chest_3',
    value = 0,
    min = 0,
    zoomOffset = 0.75,
    camOffset = 0.15
}, {
    label = Languages.GetTranslation('bodyb'),
    name = 'bodyb_1',
    value = -1,
    min = -1,
    zoomOffset = 0.75,
    camOffset = 0.15
}, {
    label = Languages.GetTranslation('bodyb_size'),
    name = 'bodyb_2',
    value = 0,
    min = 0,
    zoomOffset = 0.75,
    camOffset = 0.15
}, {
    label = Languages.GetTranslation('bodyb_extra'),
    name = 'bodyb_3',
    value = -1,
    min = -1,
    zoomOffset = 0.4,
    camOffset = 0.15
}, {
    label = Languages.GetTranslation('bodyb_extra_thickness'),
    name = 'bodyb_4',
    value = 0,
    min = 0,
    zoomOffset = 0.4,
    camOffset = 0.15
}, {
    label = Languages.GetTranslation('wrinkles'),
    name = 'age_1',
    value = 0,
    min = 0,
    zoomOffset = 0.4,
    camOffset = 0.65
}, {
    label = Languages.GetTranslation('wrinkle_thickness'),
    name = 'age_2',
    value = 0,
    min = 0,
    zoomOffset = 0.4,
    camOffset = 0.65
}, {
    label = Languages.GetTranslation('blemishes'),
    name = 'blemishes_1',
    value = 0,
    min = 0,
    zoomOffset = 0.4,
    camOffset = 0.65
}, {
    label = Languages.GetTranslation('blemishes_size'),
    name = 'blemishes_2',
    value = 0,
    min = 0,
    zoomOffset = 0.4,
    camOffset = 0.65
}, {
    label = Languages.GetTranslation('blush'),
    name = 'blush_1',
    value = 0,
    min = 0,
    zoomOffset = 0.4,
    camOffset = 0.65
}, {
    label = Languages.GetTranslation('blush_1'),
    name = 'blush_2',
    value = 0,
    min = 0,
    zoomOffset = 0.4,
    camOffset = 0.65
}, {
    label = Languages.GetTranslation('blush_color'),
    name = 'blush_3',
    value = 0,
    min = 0,
    zoomOffset = 0.4,
    camOffset = 0.65
}, {
    label = Languages.GetTranslation('complexion'),
    name = 'complexion_1',
    value = 0,
    min = 0,
    zoomOffset = 0.4,
    camOffset = 0.65
}, {
    label = Languages.GetTranslation('complexion_1'),
    name = 'complexion_2',
    value = 0,
    min = 0,
    zoomOffset = 0.4,
    camOffset = 0.65
}, {
    label = Languages.GetTranslation('sun'),
    name = 'sun_1',
    value = 0,
    min = 0,
    zoomOffset = 0.4,
    camOffset = 0.65
}, {
    label = Languages.GetTranslation('sun_1'),
    name = 'sun_2',
    value = 0,
    min = 0,
    zoomOffset = 0.4,
    camOffset = 0.65
}, {
    label = Languages.GetTranslation('freckles'),
    name = 'moles_1',
    value = 0,
    min = 0,
    zoomOffset = 0.4,
    camOffset = 0.65
}, {
    label = Languages.GetTranslation('freckles_1'),
    name = 'moles_2',
    value = 0,
    min = 0,
    zoomOffset = 0.4,
    camOffset = 0.65
}, {
    label = Languages.GetTranslation('beard_type'),
    name = 'beard_1',
    value = 0,
    min = 0,
    zoomOffset = 0.4,
    camOffset = 0.65
}, {
    label = Languages.GetTranslation('beard_size'),
    name = 'beard_2',
    value = 0,
    min = 0,
    zoomOffset = 0.4,
    camOffset = 0.65
}, {
    label = Languages.GetTranslation('beard_color_1'),
    name = 'beard_3',
    value = 0,
    min = 0,
    zoomOffset = 0.4,
    camOffset = 0.65
}, {
    label = Languages.GetTranslation('beard_color_2'),
    name = 'beard_4',
    value = 0,
    min = 0,
    zoomOffset = 0.4,
    camOffset = 0.65
} }