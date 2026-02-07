-- ██╗  ██╗██╗   ██╗██████╗  █████╗ ███╗   ██╗███████╗ ██████╗██████╗ ██╗██████╗ ████████╗███████╗
-- ██║ ██╔╝██║   ██║██╔══██╗██╔══██╗████╗  ██║██╔════╝██╔════╝██╔══██╗██║██╔══██╗╚══██╔══╝██╔════╝
-- █████╔╝ ██║   ██║██████╔╝███████║██╔██╗ ██║███████╗██║     ██████╔╝██║██████╔╝   ██║   ███████╗
-- ██╔═██╗ ██║   ██║██╔══██╗██╔══██║██║╚██╗██║╚════██║██║     ██╔══██╗██║██╔═══╝    ██║   ╚════██║
-- ██║  ██╗╚██████╔╝██████╔╝██║  ██║██║ ╚████║███████║╚██████╗██║  ██║██║██║        ██║   ███████║
-- ╚═╝  ╚═╝ ╚═════╝ ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═══╝╚══════╝ ╚═════╝╚═╝  ╚═╝╚═╝╚═╝        ╚═╝   ╚══════╝                                                                                            
-- https://discord.gg/HHMwWhqgtz

fx_version 'cerulean'

game 'gta5'

lua54 'yes'

author 'KubanScripts'

description 'Scoreboard resource made by kubanscripts'

version '1.1'

shared_script 'config.lua'

client_script 'client.lua'

server_script 'server.lua'

ui_page 'html/index.html'

files {
    'html/index.html',
    'html/style.css',
    'html/script.js',
    'html/images/*.png'
}

escrow_ignore {
    'html/images/**',
    'html/style.css',
    'config.lua',
    'fxmanifest.lua'
}

dependency '/assetpacks'