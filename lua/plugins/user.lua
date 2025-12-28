---@type LazySpec
return {
  -- Custom Dashboard for AstroNvim
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = {
        preset = {
          header = table.concat({
            " █████  ███████ ████████ ██████   ██████ ",
            "██   ██ ██         ██    ██   ██ ██    ██",
            "███████ ███████    ██    ██████  ██    ██",
            "██   ██      ██    ██    ██   ██ ██    ██",
            "██   ██ ███████    ██    ██   ██  ██████ ",
            "",
            "███    ██ ██    ██ ██ ███    ███",
            "████   ██ ██    ██ ██ ████  ████",
            "██ ██  ██ ██    ██ ██ ██ ████ ██",
            "██  ██ ██  ██  ██  ██ ██  ██  ██",
            "██   ████   ████   ██ ██      ██",
            "",
            "          Welcome, Everest! 🚀",
            "       Backend & DevOps ",
          }, "\n"),
          buttons = {
            { "f", "  Find File", ":Telescope find_files<CR>" },
            { "r", "  Recent Files", ":Telescope oldfiles<CR>" },
            { "p", "  Projects", ":Telescope projects<CR>" },
            { "t", "  Find Text", ":Telescope live_grep<CR>" },
            { "c", "  Configuration", ":e ~/.config/nvim/<CR>" },
            { "q", "  Quit NVIM", ":qa<CR>" },
          },
        },
      },
    },
  },
}
