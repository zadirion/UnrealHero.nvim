-- load unrealhero config
local configFilePath = vim.fn.expand("~") .. "/unrealhero_init.lua";
local file = io.open(configFilePath, "r")
if file then
    io.close(file)
    dofile(configFilePath)
end

require("mainconf.remap")
require("mainconf.packer")
require("mainconf.packer_getcommit")
require("mainconf.set")
require("mainconf.scrollfontsize")

