return {
  "saghen/blink.cmp",
  dependencies = { "rafamadriz/friendly-snippets" },
  version = "1.*",

  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    -- ========================================================================
    -- KEYBINDINGS: PRESET = "SUPER-TAB"
    -- ========================================================================
    -- <Tab>       : 1. Accept completion (if menu open)
    --               2. Jump to next snippet placeholder (if in snippet)
    --               3. Indent/Tab (if no completion/snippet)
    -- <S-Tab>     : 1. Select previous completion item
    --               2. Jump to previous snippet placeholder
    -- <C-space>   : Open completion menu / toggle documentation
    -- <C-e>       : Hide/cancel completion menu
    -- <Enter>     : Standard newline (does NOT accept completion)
    -- <C-k>       : Toggle signature help (parameter hints)
    -- <C-b> / <C-f>: Scroll documentation up/down
    -- ========================================================================

    keymap = { preset = "enter" },

    appearance = {
      nerd_font_variant = "mono",
    },

    sources = {
      default = { "lsp", "path", "snippets", "buffer" },
    },

    fuzzy = { implementation = "prefer_rust_with_warning" },

    -- UI: ROUNDED BORDERS
    completion = {
      documentation = {
        auto_show = false,
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
