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

## Customization

You can override the semantic colors (comments, strings, constants, functions, errors) while keeping the minimalist greyscale approach:

```lua
{
  "rdainton/fiftyshades",
  config = function()
    require("fiftyshades").setup {
      semantic = {
        comments = { gui = "#6A9955", cterm = 65 },    -- Custom green
        strings = { gui = "#CE9178", cterm = 173 },     -- Custom orange
        constants = { gui = "#569CD6", cterm = 74 },    -- Custom blue
        functions = { gui = "#DCDCAA", cterm = 187 },   -- Custom yellow
        errors = { gui = "#F44747", cterm = 203 },      -- Custom red
      }
    }
  end,
}
```

You can also use the built-in color helper:

```lua
local fiftyshades = require("fiftyshades")
plocal color = require("fiftyshades.palette").color

fiftyshades.setup({
  semantic = {
    comments = color("#6A9955", 65),
    strings = color("#CE9178", 173),
  }
})
```

