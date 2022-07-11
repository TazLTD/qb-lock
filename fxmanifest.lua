fx_version 'bodacious'
games { 'gta5' }

author 'TazLTD'
description 'NoPixel inspired lockpick minigame'
version '1.2'

client_scripts {
    'client/*.lua',
}

ui_page {
    'html/index.html',
}
files {
    'html/index.html',
    'html/*.css',
    'html/*.js',
}

exports {
    "StartLockPickCircle"
}