return {
  "saghen/blink.cmp",
  dependencies = { "rafamadriz/friendly-snippets", "L3MON4D3/LuaSnip" },
  version = "1.*",

  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    -- ... existing keybindings comment ...
    keymap = {
      preset = "enter",
      ["<Tab>"] = { "snippet_forward", "fallback" },
      ["<S-Tab>"] = { "snippet_backward", "fallback" },
    },

    appearance = {
      nerd_font_variant = "mono",
    },

    snippets = {
      preset = "luasnip",
    },

    sources = {
      default = { "lsp", "path", "snippets", "buffer" },
    },

    fuzzy = { implementation = "prefer_rust_with_warning" },

    -- UI: ROUNDED BORDERS
    completion = {
      ghost_text = {
        enabled = true,
      },
      documentation = {
        auto_show = true,
        window = { border = "rounded" },
      },
      menu = { border = "rounded" },
    },

    signature = {
      enabled = true,
      window = { border = "rounded" },
    },
  },

  opts_extend = { "sources.default" },
}
