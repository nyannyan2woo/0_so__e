
-- ██╗  ██╗██╗   ██╗██████╗  █████╗ ███╗   ██╗███████╗ ██████╗██████╗ ██╗██████╗ ████████╗███████╗
-- ██║ ██╔╝██║   ██║██╔══██╗██╔══██╗████╗  ██║██╔════╝██╔════╝██╔══██╗██║██╔══██╗╚══██╔══╝██╔════╝
-- █████╔╝ ██║   ██║██████╔╝███████║██╔██╗ ██║███████╗██║     ██████╔╝██║██████╔╝   ██║   ███████╗
-- ██╔═██╗ ██║   ██║██╔══██╗██╔══██║██║╚██╗██║╚════██║██║     ██╔══██╗██║██╔═══╝    ██║   ╚════██║
-- ██║  ██╗╚██████╔╝██████╔╝██║  ██║██║ ╚████║███████║╚██████╗██║  ██║██║██║        ██║   ███████║
-- ╚═╝  ╚═╝ ╚═════╝ ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═══╝╚══════╝ ╚═════╝╚═╝  ╚═╝╚═╝╚═╝        ╚═╝   ╚══════╝                                                                                            
-- https://discord.gg/dnZBTkVxN8

fx_version 'cerulean'

game 'gta5'

lua54 'yes'

version '1.0.4'

author 'KubanScripts'

description 'Admin Compensation Resource using ox_lib'

shared_script {
    '@ox_lib/init.lua',
    'config.lua',
    'secrets.lua'

}

client_script 'cl_comp.lua'

server_scripts {
    'sv_comp.lua',
    '@oxmysql/lib/MySQL.lua'

}
escrow_ignore {
    'config.lua',
    'secrets.lua'
}

dependency '/assetpacks'