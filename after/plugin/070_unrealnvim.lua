local lualine = require("lualine")
local UnrealCommands = require('Unreal.commands')
UnrealCommands.onStatusUpdate = function()
    lualine.refresh()
end
