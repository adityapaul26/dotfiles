-- return {
--   "catppuccin/nvim",
--   lazy = true,
--   name = "catppuccin",
--   opts = {
--     transparent_background = false, -- ✅ correct place
--     lsp_styles = {
--       underlines = {
--         errors = { "undercurl" },
--         hints = { "undercurl" },
--         warnings = { "undercurl" },
--         information = { "undercurl" },
--       },
--     },
--     integrations = {
--       aerial = true,
--       alpha = true,
--       cmp = true,
--       dashboard = true,
--       flash = true,
--       fzf = true,
--       grug_far = true,
--       gitsigns = true,
--       headlines = true,
--       illuminate = true,
--       indent_blankline = { enabled = true },
--       leap = true,
--       lsp_trouble = true,
--       mason = true,
--       mini = true,
--       navic = { enabled = true, custom_bg = "lualine" },
--       neotest = true,
--       neotree = true,
--       noice = true,
--       notify = true,
--       snacks = true,
--       telescope = true,
--       treesitter_context = true,
--       which_key = true,
--     },
--   },
--   specs = {
--     {
--       "akinsho/bufferline.nvim",
--       optional = true,
--       opts = function(_, opts)
--         if (vim.g.colors_name or ""):find("catppuccin") then
--           opts.highlights = require("catppuccin.special.bufferline").get_theme()
--         end
--       end,
--     },
--   },
-- }

-- return {
--   "catppuccin/nvim",
--   name = "catppuccin",
--   priority = 1000,
--   config = function()
--     require("catppuccin").setup({
--       flavour = "mocha",
--       transparent_background = true,
--       term_colors = true,
--       integrations = {
--         cmp = true,
--         gitsigns = true,
--         nvimtree = true,
--         telescope = true,
--         which_key = true,
--         indent_blankline = {
--           enabled = true,
--           colored_indent_levels = false,
--         },
--         native_lsp = {
--           enabled = true,
--         },
--       },
--       color_overrides = {
--         mocha = {
--           base = "#1E1E1E", -- Slack dark background
--           mantle = "#232323", -- slightly lighter for sidebar
--           crust = "#2C2C2C", -- borders or statusline
--           surface0 = "#363636", -- input box
--           text = "#ECEFF4", -- main text
--           lavender = "#7287FD", -- Slack-like purple accent
--         },
--       },
--       custom_highlights = function(colors)
--         return {
--           LineNr = { fg = colors.surface0 },
--           CursorLineNr = { fg = colors.lavender },
--           VertSplit = { fg = colors.crust },
--           StatusLine = { bg = colors.crust, fg = colors.text },
--         }
--       end,
--     })

--     vim.cmd.colorscheme("catppuccin")
--   end,
-- }

return {
  {
    "scottmckendry/cyberdream.nvim",
    priority = 1000,
    config = function()
      require("cyberdream").setup({
        transparent = true,
        italic_comments = true,
        hide_fillchars = true,
        borderless_telescope = false,
      })
      vim.cmd("colorscheme cyberdream")
    end,
  },
}
