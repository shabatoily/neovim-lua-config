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
      -- v3.0.0 부터 사용.
      vim.lsp.config("lua_ls", {
        settings = {
        }
      })

      vim.lsp.config("gopls", {
        settings = {
        }
      })

      vim.lsp.config("clangd", {
        settings = {
        }
      })

      vim.lsp.config("eslint", {
        settings = {
        }
      })

      vim.lsp.config("jsonls", {
        settings = {
        }
      })

      vim.lsp.config("marksman", {
        settings = {
        }
      })

      vim.lsp.config("yamlls", {
        settings = {
        }
      })

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
