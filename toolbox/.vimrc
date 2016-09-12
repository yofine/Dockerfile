syntax on
set showmatch        " 设置匹配模式，显示匹配的括号set linebreak        " 整词换行
set whichwrap=b,s,<,>,[,] " 光标从行首和行末时可以跳到另一行去
"set hidden " Hide buffers when they are abandoned
set fileencoding=utf-8
set helplang=cn
""set mouse=a            " Enable mouse usage (all modes)    "使用鼠标
set number            " Enable line number    "显示行号
set nu
set autoread
"set previewwindow    " 标识预览窗口
set history=50        " set command history to 50    "历史记录50条
set backspace=indent,eol,start
"--状态行设置--
set laststatus=2 " 总显示最后一个窗口的状态行；设为1则窗口数多于一个的时候显示最后一个窗口的状态行；0不显示最后一个窗口的状态行
set ruler            " 标尺，用于显示光标位置的行号和列号，逗号分隔
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab  ""使用空格代替tab
"--命令行设置--
set showcmd            " 命令行显示输入的命令
set showmode        " 命令行显示vim当前模式
autocmd BufWritePre * :%s/\s\+$//e
"--find setting--
set incsearch        " 输入字符串就显示匹配点
set hlsearch


""编码设置

set enc=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936

""语言设置

set langmenu=zh_CN.UTF-8
set helplang=cn


set tags=TAGS;
set autochdir



let g:winManagerWidth = 30
let g:defaultExplorer = 0
nmap <C-W><C-F> :FirstExplorerWindow<cr>
nmap <C-W><C-B> :BottomExplorerWindow<cr>
nmap <silent> <leader>wm :WMToggle<cr>
nmap <S-F8> <Esc>:WMToggle<cr>

let g:winManagerWindowLayout="NERDTree"
function! NERDTree_Start()
  exec 'NERDTree'
endfunction

function! NERDTree_IsValid()
    return 1
endfunction

"""""""  window settings

let g:NeoComplCache_EnableAtStartup = 1
let g:NeoComplCacheCachingTags = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_max_list=20
 "Define keyword.
  if !exists('g:neocomplcache_keyword_patterns')
    let g:neocomplcache_keyword_patterns = {}
  endif
    let g:neocomplcache_keyword_patterns['default'] = '\h\w*'
  let g:neocomplcache_auto_completion_start_length=1
 "ignore letter case
  let g:neocomplcache_enable_ignore_case=1

" UltiSnip "
let g:UltiSnipsJumpBackwardTrigger="<c-l>"

" python-syntax
let python_highlight_all = 1

" ctrlp"
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$\|.rvm$|.sw[opn]$'
let g:ctrlp_working_path_mode=0
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=15
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1

"Syntastic
let g:syntastic_javascript_checkers=['jshint']
let g:syntastic_enable_balloons = 1

" ===== Maps ====="


" snipmate"
ino <c-y>t <c-r>=TriggerSnippet()<cr>
snor <c-y>t <esc>i<right><c-r>=TriggerSnippet()<cr>

noremap <s-w> <Esc>:tabclose<cr>
noremap <c-t> <Esc>:tabnew<cr>
nmap ,tb <Esc>:tabs<cr>
nmap ,ts <Esc>:%s/\s\+$//gc<cr>
nmap ,vs <Esc>:vsplit<cr>
nmap <M-d> dd
map <c-n> <Esc>:NERDTreeToggle<cr>

nmap <c-h> <Esc>:tabprevious<cr>
nmap <c-l> <Esc>:tabnext<cr>
nmap <c-j> <Esc>:tabfirst<cr>
nmap <c-k> <Esc>:tablast<cr>

nmap <F9> :TagbarToggle<CR>

nmap <Leader>x <Plug>ToggleAutoCloseMappings

nmap <F3> :CoffeeCompile vert<CR>  # 安F3编译 并且右边显示

nmap ; :

"Syntastic
nmap ,sc :SyntasticCheck<cr>

"======== end Maps =========

" Source the vimrc file after saving it
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
  " 语言格式设定
  "autocmd FileType javascript setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType coffeescript setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType coffee setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType python setlocal ts=4 sts=4 sw=4 expandtab
  autocmd FileType less setlocal ts=2 sts=2 sw=2 expandtab

  "autocmd FileType html inoremap <buffer> %% <% %><left><left>
endif

" javascript and coffee

let coffee_make_options = '--bare --map'

"mustache
let g:mustache_abbreviations = 1
"au BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab


" vundle
 set nocompatible               " be iMproved
 set nocp
 filetype off                   " required!

 set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

" Colorscheme
Bundle 'gmarik/ingretu'

colorscheme ingretu

Bundle 'bling/vim-airline'
let g:airline_section_a = airline#section#create(['%<', 'file', 'readonly'])
let g:airline_section_gutter = airline#section#create(['%=%y%m%r[%{&ff}]'])
let g:airline_section_z = airline#section#create(['%(%l,%c%V%) %P'])

Bundle 'gmarik/vundle'
Bundle 'html5.vim'
Bundle 'indenthtml.vim'
Bundle 'JSON.vim'
Bundle 'IndentAnything'
Bundle 'The-NERD-tree'
Bundle 'nerdtree-ack'
Bundle 'ack.vim'
Bundle 'Townk/vim-autoclose'
Bundle 'kien/ctrlp.vim'
Bundle 'mru.vim'
Bundle 'The-NERD-Commenter'
Bundle 'Syntastic'
Bundle 'formatvim'
Bundle "Emmet.vim"
Bundle "plasticboy/vim-markdown"
Bundle "leshill/vim-json"

set nocompatible
set backspace=2
set listchars=tab:▸\ ,eol:¬

filetype plugin indent on

if executable('coffeetags')
  let g:tagbar_type_coffee = {
        \ 'ctagsbin' : 'coffeetags',
        \ 'ctagsargs' : '',
        \ 'kinds' : [
        \ 'f:functions',
        \ 'o:object',
        \ ],
        \ 'sro' : ".",
        \ 'kind2scope' : {
        \ 'f' : 'object',
        \ 'o' : 'object',
        \ }
        \ }
endif



let g:ackprg = 'ag --nogroup --nocolor --column'


set noswapfile
set nofoldenable
set foldlevelstart=99
