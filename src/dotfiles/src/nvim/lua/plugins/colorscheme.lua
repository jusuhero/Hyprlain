return {
  {
    "RRethy/base16-nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("base16-colorscheme").setup({
        base00 = "#000000",
        base01 = "#1A1A1A",
        base02 = "#2A2A2A",
        base03 = "#5D333C",
        base04 = "#968C6E",
        base05 = "#C1B48E",
        base06 = "#C1B48E",
        base07 = "#C1B48E",
        base08 = "#CE7688",
        base09 = "#BA6A7B",
        base0A = "#C1B48E",
        base0B = "#BA6A7B",
        base0C = "#804654",
        base0D = "#CE7688",
        base0E = "#965363",
        base0F = "#8E4E5D",
      })
    end,
  },
}
