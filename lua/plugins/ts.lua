return {
  {
    "jose-elias-alvarez/typescript.nvim",
    ft = { "typescript", "typescriptreact", "javascript", "javascriptreact", "tsx", "jsx" },
    dependencies = {
      "neovim/nvim-lspconfig",
      "nvim-lua/plenary.nvim",
    },
    config = function()
      local ts = require("typescript")
      ts.setup({
        server = {
          on_attach = function(client, bufnr)
            -- Format on save
            vim.api.nvim_create_autocmd("BufWritePre", {
              buffer = bufnr,
              callback = function() vim.lsp.buf.format({ async = false }) end,
            })
          end,
          settings = {
            typescript = { inlayHints = { includeInlayParameterNameHints = "all" } },
            javascript = { inlayHints = { includeInlayParameterNameHints = "all" } },
          },
        },
      })
    end,
  },
}
