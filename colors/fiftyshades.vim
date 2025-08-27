" This is the entry-point to the colorscheme

" This is a guard to prevent the file from being loaded again
if exists("g:colors_name")
    highlight clear
endif

" Set the name of the colorscheme
let g:colors_name = "fiftyshades"

" Set the terminal colors. This is important for a consistent experience.
set termguicolors

" Call our main Lua setup function
lua require("fiftyshades").setup()
