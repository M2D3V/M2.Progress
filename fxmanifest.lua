fx_version 'cerulean'
game 'gta5'

lua54 'yes'

name 'M2.Progress'
author 'M2.Developer <M2Dev>'
description 'Base Script mythic_progbar Edit by M2.Developer <M2Dev>'
version '1.0'

ui_page "html/index.html"

client_scripts { 'client/main.lua' }

files {
    'html/index.html',
    'html/css/style.css',
    'html/js/script.js'
}



exports {
    'Progress',
    'ProgressWithStartEvent',
    'ProgressWithTickEvent',
    'ProgressWithStartAndTick'
}