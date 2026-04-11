return {
  {
    "Thiago4532/mdmath.nvim",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
    },
    -- 🚀 Lazy-load: Only load this heavy plugin when opening a markdown file
    ft = { "markdown", "rmd", "org" },
    -- Build command just in case lazy.nvim misses it
    build = ":MdMath build",
    opts = {
      -- The default options are usually perfect, but you can configure it here
      filetypes = { "markdown", "rmd", "org" },
      theme = "dark", -- Make sure the math equations match your Gruvbox background
      foreground_color = "#ebdbb2", -- Gruvbox fg color for the math text
    },
  },
}
