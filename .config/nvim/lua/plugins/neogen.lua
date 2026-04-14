return {
  "danymat/neogen",
  dependencies = "nvim-treesitter/nvim-treesitter",
  config = function()
    require("neogen").setup({
      snippet_engine = "luasnip", -- Or "vsnip", "snippy", "mini.snippets" depending on what you use
    })

    -- Keymap to trigger the documentation generation
    vim.keymap.set("n", "<leader>nd", function()
      require("neogen").generate()
    end, { desc = "Neogen: Generate Docstring" })
  end,
}
