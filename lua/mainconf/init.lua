-- load unrealhero config
local configFilePath = vim.fn.expand("~") .. "/unrealhero_init.lua";
local file = io.open(configFilePath, "r")
if file then
    io.close(file)
    dofile(configFilePath)
end
vim.api.nvim_create_user_command("UnrealHero", function(opts)
    print(configFilePath)
    vim.cmd("vs " .. configFilePath) 
end, {})

-- globals
vim.g.UltiSnipsExpandTrigger = "<tab>"
vim.g.UltiSnipsJumpOrExpandTrigger = "<tab>"
vim.g.UltiSnipsJumpForwardTrigger = "<c-b>"
vim.g.UltiSnipsJumpBackwardTrigger = "<S-Tab>"
vim.g.UltiSnipsEditSplit = "vertical"
-- end globals
require("mainconf.remap")
require("mainconf.packer")
require("mainconf.packer_getcommit")
require("mainconf.set")
require("mainconf.scrollfontsize")

