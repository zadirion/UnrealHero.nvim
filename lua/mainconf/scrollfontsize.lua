-- if vim.g.neovide then
--    return
-- end
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
Fontsize = 12
vim.opt.guifont = "SpaceMono Nerd Font:h" .. Fontsize

function SetFontSize(fontsizeArg)
    if vim.g.neovide then
        local factor = fontsizeArg/12.0
        vim.g.neovide_scale_factor = factor
    else
        vim.opt.guifont = "SpaceMono Nerd Font:h" .. fontsizeArg
    end
end
function AdjustFontSize(amount)
   Fontsize = Fontsize + amount
   if Fontsize < 1 then Fontsize = 1 end
   SetFontSize(Fontsize)
end

vim.keymap.set("n", "<C-ScrollWheelUp>", function() AdjustFontSize(1) end)
vim.keymap.set("n", "<C-ScrollWheelDown>", function() AdjustFontSize(-1) end)

vim.keymap.set("n", "<C-kPlus>", function() AdjustFontSize(1) end)
vim.keymap.set("n", "<C-kMinus>", function() AdjustFontSize(-1) end)

