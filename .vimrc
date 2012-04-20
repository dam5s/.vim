" Load plugins using pathogen
call pathogen#runtime_append_all_bundles()

" Standard setup
set wildmenu
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set smarttab
set autoindent
set nu
colo default
syn on
set hlsearch
set nowrap
set hidden
set foldmethod=indent

" Allow usage of option key for shortcuts
set macmeta

" More file types for Ack.vim
let $ACK_OPTIONS = "--type-set=haml=.haml --type-set=coffee=.coffee --type-set=json=.json"

" Yeah really... shut up
let g:NERDShutUp = 1

" Supertab settings
let g:SuperTabDefaultCompletionTypeDiscovery = [ "&completefunc:<c-x><c-u>", "&omnifunc:<c-x><c-o>" ]
let g:SuperTabLongestHighlight = 1

" Moving between split windows
map <c-h> <c-w><c-h>
map <c-j> <c-w><c-j>
map <c-k> <c-w><c-k>
map <c-l> <c-w><c-l>

" Moving lines and blocks
nnoremap <A-j> :m+<CR>
nnoremap <A-k> :m-2<CR>
inoremap <A-j> <Esc>:m+<CR>==gi
inoremap <A-k> <Esc>:m-2<CR>==gi
vnoremap <A-j> :m'>+<CR>gv=gv
vnoremap <A-k> :m-2<CR>gv=gv

" Nerd Tree
map <F4> :execute 'NERDTreeToggle ' . getcwd()<CR>

" Display spaces and tabs, remove end of line spaces
map <leader>l :set list!<CR>
autocmd BufWritePre * :%s/\s\+$//e
map <leader>s :%s/\s\+$//e<CR>
set listchars=tab:▸\	,eol:¬

" Shorter chortcuts for lusty
map <leader>f <leader>lf
map <leader>b <leader>lb
map <leader>j <leader>lj
map <leader>g <leader>lg

" Save using sudo
cmap w!! %!sudo tee > /dev/null %

filetype on
filetype plugin indent on

"Filetype for particular extensions
au BufNewFile,BufRead *.rcss    set filetype=css
au BufNewFile,BufRead *utotest  set filetype=ruby
au BufNewFile,BufRead *.api     set filetype=ruby
au BufNewFile,BufRead *.pill    set filetype=ruby
au BufNewFile,BufRead *.god     set filetype=ruby

" Custom indent settings for some filetypes
if has("autocmd")
  autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
  autocmd FileType java setlocal ts=4 sts=4 sw=4 expandtab cindent
  autocmd FileType xml  setlocal ts=4 sts=4 sw=4 expandtab
endif

" Common typos and shortcuts
abbr desc describe
abbr subj subject
abbr ctxt context
abbr sho should
abbr func function
abbr subcription subscription
