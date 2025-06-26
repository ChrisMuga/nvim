return {
  -- Completion and LSP group
  {
    -- A "virtual" plugin to group completion-related plugins
    dir = ".", -- No actual plugin, just a grouping
    name = "completion",
    dependencies = {
      -- LSP configuration
      { "neovim/nvim-lspconfig" },

      -- Completion engine
      { "hrsh7th/nvim-cmp" },
      { "hrsh7th/cmp-nvim-lsp" },
      { "hrsh7th/cmp-buffer" },
      { "hrsh7th/cmp-path" },
      { "hrsh7th/cmp-cmdline" },

      -- Vsnip for snippets
      { "hrsh7th/cmp-vsnip" },
      { "hrsh7th/vim-vsnip" },

      -- Optional: Other snippet engines (commented out as in original)
      -- { "L3MON4D3/LuaSnip" },
      -- { "saadparwaiz1/cmp_luasnip" },
      -- { "echasnovski/mini.snippets" },
      -- { "abeldekat/cmp-mini-snippets" },
      -- { "SirVer/ultisnips" },
      -- { "quangnguyen30192/cmp-nvim-ultisnips" },
      -- { "dcampos/nvim-snippy" },
      -- { "dcampos/cmp-snippy" },

      -- Optional: cmp-git (commented out as in original)
      -- { "petertriho/cmp-git" },
    },
    config = function()
      -- Set up nvim-cmp
      local cmp = require("cmp")

      cmp.setup({
        snippet = {
          expand = function(args)
            vim.fn["vsnip#anonymous"](args.body) -- For vsnip users
            -- require('luasnip').lsp_expand(args.body) -- For luasnip users
            -- require('snippy').expand_snippet(args.body) -- For snippy users
            -- vim.fn["UltiSnips#Anon"](args.body) -- For ultisnips users
            -- vim.snippet.expand(args.body) -- For native Neovim snippets (v0.10+)
            -- For mini.snippets users:
            -- local insert = MiniSnippets.config.expand.insert or MiniSnippets.default_insert
            -- insert({ body = args.body })
            -- cmp.resubscribe({ "TextChangedI", "TextChangedP" })
            -- require("cmp.config").set_onetime({ sources = {} })
          end,
        },
        window = {
          -- completion = cmp.config.window.bordered(),
          -- documentation = cmp.config.window.bordered(),
        },
        mapping = cmp.mapping.preset.insert({
          ["<C-b>"] = cmp.mapping.scroll_docs(-4),
          ["<C-f>"] = cmp.mapping.scroll_docs(4),
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<C-e>"] = cmp.mapping.abort(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item
        }),
        sources = cmp.config.sources({
          { name = "nvim_lsp" },
          { name = "vsnip" }, -- For vsnip users
          -- { name = "luasnip" }, -- For luasnip users
          -- { name = "ultisnips" }, -- For ultisnips users
          -- { name = "snippy" }, -- For snippy users
        }, {
          { name = "buffer" },
        }),
      })

      -- Optional: Git commit filetype setup (uncomment to use with cmp-git)
      --[[
      cmp.setup.filetype("gitcommit", {
        sources = cmp.config.sources({
          { name = "git" },
        }, {
          { name = "buffer" },
        }),
      })
      require("cmp_git").setup()
      --]]

      -- Use buffer source for "/" and "?" (search)
      cmp.setup.cmdline({ "/", "?" }, {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {
          { name = "buffer" },
        },
      })

      -- Use cmdline & path source for ":" (commands)
      cmp.setup.cmdline(":", {
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources({
          { name = "path" },
        }, {
          { name = "cmdline" },
        }),
        matching = { disallow_symbol_nonprefix_matching = false },
      })

      -- Set up lspconfig
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      -- Example LSP server setup (replace with actual servers)
      -- require("lspconfig").lua_ls.setup({
      --   capabilities = capabilities,
      --   settings = {
      --     Lua = {
      --       diagnostics = {
      --         globals = { "vim" }, -- Recognize 'vim' global
      --       },
      --     },
      --   },
      -- })
    end,
  },
}
