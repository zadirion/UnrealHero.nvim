# UnrealHero.nvim

Nvim configuration suitable for development in Unreal Engine

Youtube video explanation on how to set it up, click the image below:

[![Video - how to set up](https://img.youtube.com/vi/dlR_ryaQkRM/0.jpg)](https://www.youtube.com/watch?v=dlR_ryaQkRM)



*Requirements:*
Make sure you have in your path:
- make sure you install the clangd support component through Visual Studio Setup, and make sure the installed clang++.exe is in your system path env variable. Needs to be added manually to path, the installer does not do that
- python 3.11 installed in your path
- ripgrep in your path

**Setup**

You will have to run `:PackerSync` and restart neovim a few times until everything gets downloaded and looks ok
Run `:Mason` and check that it finished installing everything, before closing

Comes with https://github.com/zadirion/Unreal.nvim, my neovim plugin that adds support for Unreal Engine

**Pre-configured Bindings/Shortcuts**
Unless the mode is specified, the implied mode for all these shortcuts is normal mode.
- <leader> key is set to spacebar
- Adjust font size - Ctrl+Scroll Wheel up/Down  or  Ctrl+'+'/'-'
- Move selected text up/down: select the text in visual mode, then J and K to move up down
- Append next line to current line: Shift+J
- Switch between header and source: Alt-o
- Force autocomplete: Ctrl+<leader>
- Navigate through autocomplete suggestions: Ctrl-y for up, Ctrl-n for down
- Page up/Page down: Ctrl-u and Ctrl-d
- Copy to windows clipboard/Paste from windows clipboard: <leader>y and <leader>p
- next/previous item in quickfix list
- replace current word under cursor: <leader>s
- show currently opened buffers: Ctrl-t
- [INSERT MODE] get back to normal mode: quickly type 'jk', it's quicker than 'ESC'
- [INSERT MODE] undo: uu
- [INSERT MODE] delete previous word: ww
- Build Unreal project: Ctrl-B
- Run Unreal project: F5
- Extract selected code into separate function: <leader>re
- Extract to file: <leader>rf
- Extract variable: <leader>rv
- Refactor inline var: <leader>ri
- Refactor inline func: <leader>rI
- Extract block: <leader>rb
- Extract block to file: <leader>rbf
- [VISUAL MODE] Define class func: <leader>rdf
- [VISUAL MODE] Make concrete class: <leader>rmc
- [VISUAL MODE] Rule of 3: <leader>rro
- [VISUAL MODE] Rules of 5: <leader>rroo
- add file to Harpoon: <leader>a
- Harpoon quick menu: C-e
- Go to files: C-h, C-n, C-s
- Telescope find files: <leader>ff
- Telescope grep: <leader>fg
- Telescope diagnostics: <leader>fd
- Telescope document symbols: <leader>fs
- Telescope workspace symbols: <leader>fws
- git files: <leader>gf
- vim grep command: <leader>ps
- Undotree toggle: <leader>u
- CMP up/down: C-b, C-f
- CMP complete: C-space
- CMP abort: C-e
- CMP confirm: <CR>
- CMP next: C-n
- CMP prev: C-p
- CMP confirm: C-y
- CMP complete: C-space
- go to declaration/definition: gd
- help for symbol under cursor: K
- LSP find symbol: <leader>vfs
- open diagnostics: <leader>vd
- next diagnostic: d]
- prev diagnostic: d[
- LSP code action: <leader>vca
- LSP references: <leader>vrr
- LSP rename: <leader>vrn
- LSP signature help: C-h
