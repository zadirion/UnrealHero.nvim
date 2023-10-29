# UnrealHero.nvim

Nvim configuration suitable for development in Unreal Engine
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
