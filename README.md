# Fifty Shades

A minimalist greyscale Neovim colorscheme with dark background.

## Installation

Using [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
{
  "your-username/fiftyshades",
  config = function()
    require("fiftyshades").setup()
  end,
}
```

## Usage

```lua
vim.cmd.colorscheme("fiftyshades")
-- or
require("fiftyshades").setup()
```
