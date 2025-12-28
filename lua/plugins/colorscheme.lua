
return {
  {
    "luisiacc/gruvbox-baby",
    lazy = false, -- load during startup
    priority = 1000,
    config = function()
      vim.g.gruvbox_baby_function_style = "NONE"
      vim.g.gruvbox_baby_keyword_style = "italic"
      vim.g.gruvbox_baby_background_color = "dark"
      vim.cmd("colorscheme gruvbox-baby")
    end,
  },
}
