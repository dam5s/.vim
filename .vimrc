call pathogen#runtime_append_all_bundles()

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

let $ACK_OPTIONS = "--type-set=haml=.haml --type-set=coffee=.coffee --type-set=json=.json"

let g:NERDShutUp = 1

" Supertab settings
let g:SuperTabDefaultCompletionTypeDiscovery = [ "&completefunc:<c-x><c-u>", "&omnifunc:<c-x><c-o>" ]
let g:SuperTabLongestHighlight = 1

map <c-h> <c-w><c-h>
map <c-j> <c-w><c-j>
map <c-k> <c-w><c-k>
map <c-l> <c-w><c-l>

map <F4> :execute 'NERDTreeToggle ' . getcwd()<CR>
map <leader>l :set list!<CR>
map <leader>s :%s/\s\+$//e<CR>
set listchars=tab:▸\	,eol:¬

map <leader>f <leader>lf
map <leader>b <leader>lb
map <leader>j <leader>lj
map <leader>g <leader>lg

cmap w!! %!sudo tee > /dev/null %

filetype on
filetype plugin indent on

"Filetype for particular extensions
au BufNewFile,BufRead *.rcss    set filetype=css
au BufNewFile,BufRead *utotest  set filetype=ruby
au BufNewFile,BufRead *.api     set filetype=ruby
au BufNewFile,BufRead *.pill    set filetype=ruby
au BufNewFile,BufRead *.god     set filetype=ruby

if has("autocmd")
  autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
  autocmd FileType java setlocal ts=4 sts=4 sw=4 expandtab cindent
  autocmd FileType xml  setlocal ts=4 sts=4 sw=4 expandtab
endif

abbr desc describe
abbr subj subject
abbr ctxt context
abbr sho should
abbr func function
abbr subcription subscription
