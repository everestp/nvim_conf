return {
  {
    "ray-x/go.nvim",
    dependencies = {
      "ray-x/guihua.lua",
      "neovim/nvim-lspconfig",
      "nvim-treesitter/nvim-treesitter",
    },
    ft = { "go", "gomod" },
    config = function()
      require("go").setup({
        gofmt = "goimports",
        lsp_cfg = true,
        lsp_on_attach = true,
        dap_debug = true,
      })
    end,
  },
}
