return {
  {
    "vyfor/cord.nvim",
    build = ":Cord update", -- This will download the necessary server component
    event = "VeryLazy", -- Load it after startup
    -- opts = {} -- You can add configuration options here if you want
  },
  {
    "isakbm/gitgraph.nvim",
    opts = {
      git_cmd = "git",
      symbols = {
        merge_commit = "",
        commit = "",
        merge_commit_end = "",
        commit_end = "",
      },
      format = {
        timestamp = "%H:%M:%S %d-%m-%Y",
        fields = { "hash", "timestamp", "author", "branch_name", "tag" },
      },
      hooks = {
        on_select_commit = function(commit)
          print("selected commit:", commit.hash)
        end,
        on_select_range_commit = function(from, to)
          print("selected range:", from.hash, to.hash)
        end,
      },
    },
    keys = {
      {
        "<leader>gl",
        function()
          require("gitgraph").draw({}, { all = true, max_count = 5000 })
        end,
        desc = "GitGraph - Draw",
      },
    },
    {
      "chentoast/marks.nvim",
      event = { "BufReadPre", "BufNewFile" },
      opts = {},
    },
  },
  {
    "MeanderingProgrammer/render-markdown.nvim",
    opts = {
      file_types = { "markdown", "Avante" },
      code = {
        sign = false,
        width = "block",
        right_pad = 1,
      },
      heading = {
        sign = false,
        icons = {}, -- clear icons if you want a clean look
      },
    },
    ft = { "markdown", "norg", "rmd", "org" },
    config = function(_, opts)
      require("render-markdown").setup(opts)
      vim.keymap.set("n", "<leader>mt", require("render-markdown").toggle, { desc = "Toggle Render Markdown" })
    end,
  },
  {
    "akinsho/toggleterm.nvim",
    opts = function(_, opts)
      opts.size = 20
      opts.open_mapping = [[<c-\>]]
    end,
    keys = {
      {
        "<leader>gm",
        function()
          local Terminal = require("toggleterm.terminal").Terminal
          local bimagic = Terminal:new({
            cmd = "bimagic", -- This assumes 'bimagic' is in your global PATH
            hidden = true,
            direction = "float",
            float_opts = {
              border = "curved", -- 'single', 'double', 'shadow', 'curved'
              width = 100,
              height = 25,
              title = "  Bimagic Git Wizard ",
            },
            close_on_exit = true,

            on_open = function(term)
              vim.cmd("startinsert!")
              vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", { noremap = true, silent = true })
            end,
          })
          bimagic:toggle()
        end,
        desc = "Bimagic (Git Wizard)",
      },
    },
  },
  -- 1. The Viewer (Adds alignment and borders)
  {
    "hat0uma/csvview.nvim",
    ft = { "csv", "tsv" },
    opts = {
      parser = { comments = { "#", "//" } },
      view = {
        display_mode = "border", -- Spreadsheet look
      },
    },
    config = function(_, opts)
      local csvview = require("csvview")
      csvview.setup(opts)
      csvview.enable()
      vim.api.nvim_create_autocmd("FileType", {
        pattern = { "csv", "tsv" },
        callback = function()
          csvview.enable()
        end,
      })
    end,
  },
  {
    "mechatroner/rainbow_csv",
    ft = { "csv", "tsv" },
  },
  {
    "karb94/neoscroll.nvim",
    event = { "BufReadPre", "BufNewFile" },
    opts = {
      -- All these keys are optional, but this is a nice default
      easing_function = "quintic", -- "linear", "quadratic", "cubic", "quintic"
      hide_cursor = true,
      stop_eof = true,
    },
  },
  -- {
  --   "lewis6991/gitsigns.nvim",
  --   event = { "BufReadPre", "BufNewFile" },
  --   opts = {
  --     current_line_blame = true,
  --     current_line_blame_opts = {
  --       virt_text = true,
  --       virt_text_pos = "eol", -- 'eol' (end of line) or 'overlay'
  --       delay = 500, -- Wait 500ms before showing blame
  --       ignore_whitespace = false,
  --     },
  --     -- This formats the text just like you described
  --     current_line_blame_formatter = " <author>, <author_time:%R> • <summary:-(40)>",
  --   },
  -- },
  {
    "lewis6991/gitsigns.nvim",
    event = { "BufReadPre", "BufNewFile" },
    opts = {
      current_line_blame = true,
      current_line_blame_opts = {
        virt_text = true,
        virt_text_pos = "eol", -- 'eol' (end of line) or 'overlay'
        delay = 500, -- Wait 500ms before showing blame
        ignore_whitespace = false,
      },
      -- This formats the text just like you described
      current_line_blame_formatter = " <author>, <author_time:%R> • <summary:-(40)>",
    },
    config = function(_, opts)
      -- 1. Setup gitsigns with your opts
      require("gitsigns").setup(opts)

      -- 2. Override the highlight group
      -- Set fg to pure white ('#cccccc'). You can also add `bold = true` or `italic = true`
      vim.api.nvim_set_hl(0, "GitSignsCurrentLineBlame", { fg = "#cccccc" })
    end,
  },
  {
    "nvzone/minty",
    cmd = { "Shades", "Huefy" },
    dependencies = {
      { "nvzone/volt", lazy = true },
    },
  },
}
