set t_Co=256
set nocompatible  " Because filetype detection doesn't work well in compatible mode

syntax enable
hi comment ctermfg=green
hi Paren ctermfg=black ctermbg=None
hi MatchParen ctermfg=black ctermbg=8
hi Folded ctermfg=red ctermbg=None
hi Special ctermfg=black ctermbg=None
hi visual ctermbg=blue ctermfg=white
hi StatusLine ctermbg=white ctermfg=black
hi Search ctermfg=black ctermbg=yellow
hi LineNr ctermbg=darkgray ctermfg=white
hi Pmenu ctermfg=white ctermbg=blue
hi PmenuSel ctermfg=red ctermbg=blue

hi pythonStatement ctermfg=magenta
hi pythonRepeat ctermfg=magenta
hi pythonConditional ctermfg=magenta
hi pythonPreCondit ctermfg=magenta
hi pythonTodo ctermfg=magenta
hi pythonBuiltinFunc ctermfg=magenta
hi pythonException ctermfg=black
hi pythonOperator ctermfg=black
hi pythonExClass ctermfg=black
hi pythonFunction ctermfg=black
hi pythonFloat ctermfg=brown
hi pythonNumber ctermfg=brown
hi pythonComment ctermfg=brown
hi pythonString ctermfg=blue
hi pythonRawString ctermfg=blue
hi pythonStrFormat ctermfg=blue

hi phpComment ctermfg=green
hi phpStringSingle ctermfg=red
hi phpStringDouble ctermfg=red
hi phpVarSelector ctermfg=16
hi phpVarSelectorDeref ctermfg=black
hi phpIdentifier ctermfg=16
hi phpSuperglobal ctermfg=black
hi phpIdentifierInString ctermfg=black
hi phpIdentifierInString ctermfg=black
hi phpMemberSelector ctermfg=black
hi phpStructure ctermfg=blue
hi phpStorageClass2 ctermfg=blue
hi phpDefine ctermfg=blue
hi phpType ctermfg=blue
hi phpNull ctermfg=blue
hi phpRepeat ctermfg=blue
hi phpConditional ctermfg=blue
hi phpCase ctermfg=blue
hi phpStatement ctermfg=blue
hi phpOperator ctermfg=black
hi phpFunctions ctermfg=black
hi phpEcho ctermfg=blue
hi phpNumber ctermfg=red
hi phpFloat ctermfg=black
hi phpBrace ctermfg=black
hi phpStaticAccess ctermfg=blue
hi phpMagicClass ctermfg=blue
hi phpEnvVar ctermfg=blue
hi phpAs ctermfg=blue
hi phpException ctermfg=blue
hi phpQuoteSingle ctermfg=red
let php_alt_blocks = 0
let php_alt_arrays = 0
let php_alt_construct_parents = 0
let php_show_spl = 0
let php_smart_semicolon = 0
let php_highlight_quotes = 1
let php_alt_properties = 0
let php_alt_comparisons = 0
let php_special_functions = 0
let php_special_functions = 0
let php_parent_error_open = 1

hi javaScriptFunction ctermfg=magenta cterm=bold
hi javaScriptLabel ctermfg=16 cterm=bold
hi javaScriptBranch ctermfg=magenta cterm=bold
hi javaScriptOperator ctermfg=magenta cterm=bold
hi javaScriptBoolean ctermfg=magenta cterm=bold
hi javaScriptConditional ctermfg=magenta cterm=bold
hi javaScriptNull ctermfg=magenta cterm=bold
hi javaScriptGlobalObjects ctermfg=magenta cterm=bold
hi javaScriptNumber ctermfg=brown
"hi javaScriptNumber ctermfg=16
hi javaScriptType cterm=bold ctermfg=magenta
hi javaScriptStringS ctermfg=blue
hi javaScriptStringD ctermfg=blue
hi javaScriptRepeat ctermfg=magenta cterm=bold


let g:php_folding=1
set foldlevel=1
set foldmethod=syntax
"set nofoldenable

set history=1000
set incsearch
set ignorecase
set smartcase
set nohlsearch

set nobackup

set noswapfile
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set hidden
set wildchar=<Tab> wildmenu wildmode=full
set autoread
set autoindent
set smartindent
filetype plugin indent on
" Turns on filetype detection, filetype plugins, and filetype indenting all of which add nice extra features to whatever language you're using

set wrap
set linebreak
set scrolloff=1
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set mouse=a
set statusline=%<%f%h%m%r\ %{&encoding}\ line\ %l,\ column\ %v
set laststatus=2
set showcmd
set ch=1
set number
set listchars=tab:>-,trail:·
set list
set fileencodings=utf-8,cp1251,koi8-r
set visualbell
set sessionoptions=curdir,buffers,tabpages

set iminsert=0


set tags=tags;/

au BufNewFile,BufRead *.tt setf tt2html
au FileType c,cpp,java set mps+==:;
 
let b:tt2_syn_tags = '\[% %]'

autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType tt2html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
    
:au FileType php,perl,python vmap g/i :s/^/#<cr>
:au FileType php,perl,python vmap g/o :s/^#//<cr>
:au FileType php,perl,python nmap g/i :s/^/#<cr>
:au FileType php,perl,python nmap g/o :s/^#//<cr>
:au FileType vim vmap g/i :s/^/"<cr>
:au FileType vim vmap g/o :s/^"//<cr>
:au FileType vim nmap g/i :s/^/"<cr>
:au FileType vim nmap g/o :s/^"//<cr>
:au FileType c,cpp,java,javascript vmap g/i :s/^/\/\/<cr>
:au FileType c,cpp,java,javascript vmap g/o :s/^\/\///<cr>
:au FileType c,cpp,java,javascript nmap g/i :s/^/\/\/<cr>
:au FileType c,cpp,java,javascript nmap g/o :s/^\/\///<cr>
autocmd FileType python set complete+=k~/.vim/syntax/python.vim isk+=.,(

"let mapleader = "\"    
      
imap <C-F> <C-X><C-O>

imap <c-l> <Esc><right>
vmap <c-l> <Esc><right>

nmap <silent> <leader>s :set nolist!<CR>

nnoremap <F5> :set nonumber!<CR>:set foldcolumn=0<CR>

nmap gy :TlistToggle<cr>
vmap gy <esc>:TlistToggle<cr>

:au FileType javascript map <c-j> /\S\+\s*: function<cr>$%%^
:au FileType javascript map <c-k> ?\S\+\s*: function<cr>$%%^

:au FileType php map <c-j> j]m
:au FileType php map <c-k> [m

map <F2> <esc>:q<CR>
vmap <F2> <esc>:q<CR>
imap <F2> <esc>:q<CR>

map <F12> <esc>:VE<CR>
vmap <F12> <esc>:VE<CR>
imap <F12> <esc>:VE<CR>

vmap < <gv
vmap > >gv
nmap < <<
nmap > >>

nmap gU ~
nmap gu ~
"nnoremap ' `
"nnoremap ` '

" vmap <F5> :s///g


"nmap <c-k> <C-U><C-U>
"nmap <c-j> <C-D><C-D>
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
nmap ga :! git annotate %<CR>

nmap gb :bdelete<cr>
map ghi :set hlsearch<cr>
map gho :set nohlsearch<cr>

nmap gl :buffers<CR>:buffer<Space>
vmap gl <esc>:buffers<CR>:buffer<Space>

nmap <leader>bc :bd<CR>
map <leader>wc <c-w>c

map gq <esc>:qa<CR>
vmap gq <esc>:qa<CR>

map ge <esc>:qa!<CR>
vmap ge <esc>:qa!<CR>

map gw <esc>:wa<CR>
vmap gw <esc>:wa<CR>

map <c-d> <c-f>
map <c-u> <c-b>

map gr <esc>:e 
vmap gr <esc>:e 

map gs <esc>:%s///g<left><left><left>
vmap gs :s///g<left><left><left>

"map ge <esc>V$%jd

map gni :set number<cr>
map gno :set nonumber<cr>

map gf /function \<<c-r>=expand("<cword>")<cr>\><cr>

map gmi :set mouse=a<cr>
map gmo :set mouse=<cr>

map g1 1<c-^>
map g2 2<c-^>
map g3 3<c-^>
map g4 4<c-^>
map g5 5<c-^>
map g6 6<c-^>
map g7 7<c-^>
map g8 8<c-^>
map g9 9<c-^>
let g:xml_syntax_folding=1

vmap g) di()<esc><left>p
vmap g' di''<esc><left>p
vmap g" di""<esc><left>p
map gt :tselect<CR>
nmap gr zR
nmap gm zM
let g:DisableAutoPHPFolding = 1
map gp /extends<CR>w<c-]>
