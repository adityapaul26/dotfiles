-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Leader keys
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Core preferences
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = "a"
vim.opt.clipboard = vim.env.SSH_TTY and "" or "unnamedplus"
vim.opt.termguicolors = true
vim.opt.cursorline = true
vim.opt.wrap = false
vim.opt.scrolloff = 4
vim.opt.sidescrolloff = 8

-- Indentation
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.smartindent = true

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Split behavior
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Undo and backup
vim.opt.undofile = true

-- Performance
vim.opt.updatetime = 200
vim.opt.timeoutlen = 300

-- UI/Look
vim.opt.signcolumn = "yes"
vim.opt.laststatus = 3
vim.opt.pumheight = 10

-- Formatting & clipboard
vim.g.autoformat = true
vim.opt.completeopt = "menu,menuone,noselect"

-- Optional: Only if you use folding or markdown
vim.opt.foldlevel = 99
vim.g.markdown_recommended_style = 0

-- Global rounded borders for floating windows
local _border = "rounded"

vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
  border = _border,
})

vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
  border = _border,
})

vim.diagnostic.config({
  float = { border = _border },
})
