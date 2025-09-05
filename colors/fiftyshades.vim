" This is the entry-point to the colorscheme

if exists("g:colors_name")
    highlight clear
endif

let g:colors_name = "fiftyshades"

set termguicolors

lua require("fiftyshades").setup()
