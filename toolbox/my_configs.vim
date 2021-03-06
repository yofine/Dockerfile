set background=dark
colorscheme peaksea

set number
set foldcolumn=0
set numberwidth=5
set cmdheight=1

let g:airline_theme="wombat"

map <c-n> <Esc>:NERDTreeToggle<cr>
let g:NERDTreeWinPos = "left"
let NERDTreeShowHidden=1

autocmd BufWrite *.php :call DeleteTrailingWS()
autocmd BufWrite *.js :call DeleteTrailingWS()
autocmd BufWrite *.css :call DeleteTrailingWS()
autocmd BufWrite *.phtml    :call DeleteTrailingWS()
autocmd BufWrite *.html :call DeleteTrailingWS()
autocmd BufWrite *.htm :call DeleteTrailingWS()
autocmd BufWrite *.htm :call DeleteTrailingWS()
