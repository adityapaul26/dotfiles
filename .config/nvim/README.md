# 💤 Aditya’s LazyVim Config

> My personal Neovim configuration built on top of [LazyVim](https://github.com/LazyVim/LazyVim) — lightweight, modular, and blazing fast ⚡

---

## 🚀 Overview

This is my customized Neovim setup using **LazyVim** as the base framework.  
It’s designed for **modern development** with a focus on:
- 🧠 Clean, intuitive workflow  
- ⚙️ Smart defaults with minimal effort  
- ⚡ Speed & productivity  
- 💻 Great experience for coding, writing, and scripting  

---


### 🧰 Folder Structure
---
```bash
├── .gitignore
├── .neoconf.json
├── LICENSE
├── README.md
├── init.lua
├── lazy-lock.json
├── lazyvim.json
├── lua
    ├── config
    │   ├── autocmds.lua
    │   ├── keymaps.lua
    │   ├── lazy.lua
    │   └── options.lua
    └── plugins
    │   ├── autosave.lua
    │   ├── bufferline.lua
    │   ├── example.lua
    │   ├── gitsigns.lua
    │   ├── lualine.lua
    │   ├── mini-icons.lua
    │   ├── neo-tree.lua
    │   ├── telescope.lua
    │   ├── theme.lua
    │   └── treesitter.lua
└── stylua.toml
```
---
## 🧩 Features

- **Plugin Management:** Powered by [lazy.nvim](https://github.com/folke/lazy.nvim)  
- **Autosave:** Seamless file saving with [`Pocco81/auto-save.nvim`](https://github.com/Pocco81/auto-save.nvim)  
- **LSP + Completion:** Preconfigured with `mason.nvim`, `nvim-lspconfig`, and `nvim-cmp`  
- **Telescope:** Fuzzy finder for files, buffers, and live grep  
- **Treesitter:** Better syntax highlighting and code structure awareness  
- **Git Integration:** Inline diffs, blame, and status via `gitsigns.nvim`  
- **UI Enhancements:** Icons, statusline, bufferline, and color schemes  
- **Keymaps:** Thoughtfully chosen shortcuts for speed and comfort  
- **Custom Fonts & Themes:** Tweaked visuals for clarity and consistency  

---

## 🛠️ Installation

### Prerequisites
- [Neovim](https://neovim.io/) **v0.9+**
- [Git](https://git-scm.com/)
- A Nerd Font (recommended: [JetBrains Mono Nerd Font](https://www.nerdfonts.com/font-downloads))

### Setup
```bash
# Backup your old config (optional)
mv ~/.config/nvim ~/.config/nvim.backup

# Clone this repo
git clone https://github.com/adityapaul26/nvim-config.git ~/.config/nvim

# Start Neovim
nvim
```

