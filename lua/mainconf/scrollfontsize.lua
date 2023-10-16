-- let s:fontsize = 12
-- function! AdjustFontSize(amount)
--   let s:fontsize = s:fontsize+a:amount
--   :execute "GuiFont! Consolas:h" . s:fontsize
-- endfunction
-- 
-- noremap <C-ScrollWheelUp> :call AdjustFontSize(1)<CR>
-- noremap <C-ScrollWheelDown> :call AdjustFontSize(-1)<CR>
-- inoremap <C-ScrollWheelUp> <Esc>:call AdjustFontSize(1)<CR>a
-- inoremap <C-ScrollWheelDown> <Esc>:call AdjustFontSize(-1)<CR>a
local fontsize = 12

function SetFontSize(fontsizeArg)
   vim.opt.guifont = "SpaceMono Nerd Font:h" .. fontsizeArg
end
function AdjustFontSize(amount)
   fontsize = fontsize + amount
   SetFontSize(fontsize)
end

vim.keymap.set("n", "<C-ScrollWheelUp>", function() AdjustFontSize(1) end)
vim.keymap.set("n", "<C-ScrollWheelDown>", function() AdjustFontSize(-1) end)

vim.keymap.set("n", "<C-kPlus>", function() AdjustFontSize(1) end)
vim.keymap.set("n", "<C-kMinus>", function() AdjustFontSize(-1) end)

