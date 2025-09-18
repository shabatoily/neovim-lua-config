local keyMapper = require("utils.keyMapper").mapKey

return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "clangd",
          "lua_ls",
          "eslint",
          "gopls",
          "jsonls",
          "marksman",
          "yamlls",
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      lspconfig.gopls.setup({})
      lspconfig.clangd.setup({})
      lspconfig.eslint.setup({})
      lspconfig.jsonls.setup({})
      lspconfig.marksman.setup({})
      lspconfig.yamlls.setup({})

      -- v3.0.0 부터 사용.
      -- vim.lsp.config.lua_ls.setup({})
      -- vim.lsp.config.gopls.setup({})
      -- vim.lsp.config.clangd.setup({})
      -- vim.lsp.config.eslint.setup({})
      -- vim.lsp.config.jsonls.setup({})
      -- vim.lsp.config.marksman.setup({})
      -- vim.lsp.config.yamlls.setup({})1

      --  vim.lsp.buf.hover: hover documentation
      --  vim.lsp.buf.definition: go to definition
      --  vim.lsp.buf.code_action: code action
      --  vim.lsp.buf.references: show all references
      keyMapper("K", vim.lsp.buf.hover)
      keyMapper("gd", vim.lsp.buf.definition)
      keyMapper("<leader>ca", vim.lsp.buf.code_action)
      keyMapper("gr", vim.lsp.buf.references)
      keyMapper("<C-k>", vim.lsp.buf.signature_help)
      keyMapper("<leader>f", vim.lsp.buf.format)
    end,
  },
}
