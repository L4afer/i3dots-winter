return {
  "jpwol/thorn.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    theme = "forest",
    transparent = false,
    terminal = true,
    styles = {
      keywords = { italic = true, bold = false },
      comments = { italic = true, bold = false },
      strings = { italic = true, bold = false },
    },
  },
  config = function(_, opts)
    require("thorn").setup(opts)
    vim.cmd.colorscheme("thorn")
  end,
}