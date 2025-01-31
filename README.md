# Neovim/NVChad config

This is my personal Neovim config. It is based on the amazing [NvChad](nvchad/NvChad) starter.
The plugins and settings are intended for Python development.
Includes Copilot and Neotest plugins and a Python LSP server config.

![image](https://github.com/user-attachments/assets/2bf8de51-4007-4fa4-bdd9-db095ab34144)


## Installation

1. Clone this repo to your Neovim config directory (usually `~/.config/nvim`).
2. Open Neovim and run `:MasonInstallAll` to install the plugins.
3. Run `:TSInstall python` to install the Python LSP server.


**This repo is supposed to used as config by NvChad users!**

- The main nvchad repo (NvChad/NvChad) is used as a plugin by this repo.
- So you just import its modules , like `require "nvchad.options" , require "nvchad.mappings"`
- So you can delete the .git from this repo ( when you clone it locally ) or fork it :)

# Credits

1) Lazyvim starter https://github.com/LazyVim/starter as nvchad's starter was inspired by Lazyvim's . It made a lot of things easier!
