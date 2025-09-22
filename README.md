# Fifty Shades

A minimalist Neovim colorscheme inspired by Alabaster for Sublime Text. Features subtle syntax highlighting with colors only for comments, strings, constants, and functions - everything else remains greyscale.

## Installation

Using [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
{
  "rdainton/fiftyshades",
  config = function()
    require("fiftyshades").setup()
  end,
}
```

