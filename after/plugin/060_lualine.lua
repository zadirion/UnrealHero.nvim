local UnrealCommands = require('Unreal.commands')
local GetFilePath = function()
    local winWidth = vim.api.nvim_win_get_width(0)
    local reservedSpaceLeft = 60
    local shortPath = vim.fn.pathshorten(
        vim.fn.expand("%:h"),
        2)
    return "[" .. shortPath .. "]"
end

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 10,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {UnrealCommands.GetStatusBar},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {UnrealCommands.GetStatusBar},
  },
  tabline = {},
  winbar = {
    lualine_c = {'filename', 'searchcount', 'selectioncount', {'filename', path=2}},
  },
  inactive_winbar = {
    lualine_c = {'filename', 'searchcount', 'selectioncount', GetFilePath},
  },
  extensions = {}
}
