call plug#begin('~/.vim/plugged')

Plug 'junegunn/seoul256.vim'
Plug 'junegunn/vim-easy-align'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-sensible'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }
Plug 'https://github.com/bling/vim-airline'
Plug 'https://github.com/kien/ctrlp.vim.git'
Plug 'git@github.com:editorconfig/editorconfig-vim.git'
Plug 'git@github.com:mattn/emmet-vim.git'
Plug 'git://github.com/digitaltoad/vim-jade.git'
Plug 'git@github.com:wavded/vim-stylus.git'
Plug 'git@github.com:ervandew/supertab.git'
Plug 'git@github.com:mhinz/vim-startify.git'
Plug 'git@github.com:tpope/vim-characterize.git'
Plug 'git@github.com:Lokaltog/vim-easymotion.git'
Plug 'git@github.com:tpope/vim-eunuch.git'
Plug 'git@github.com:Shougo/vimproc.vim.git', {'do' : 'make'}
Plug 'git@github.com:Shougo/vimshell.vim.git'
Plug 'git@github.com:glts/vim-cottidie.git'
Plug 'git@github.com:tpope/vim-surround.git'
Plug 'git@github.com:suan/vim-instant-markdown.git'
Plug 'git@github.com:groenewege/vim-less.git'
Plug 'git@github.com:vim-ruby/vim-ruby.git'
Plug 'git@github.com:vimwiki/vimwiki.git'
Plug 'git@github.com:ervandew/screen.git'
Plug 'git@github.com:esneider/YUNOcommit.vim.git'
Plug 'git@github.com:othree/html5.vim.git'
Plug 'git@github.com:rking/ag.vim.git'
Plug 'git@github.com:kchmck/vim-coffee-script.git'
Plug 'git@github.com:Raimondi/delimitMate.git'
Plug 'git@github.com:ntpeters/vim-better-whitespace.git'
Plug 'git@github.com:tpope/vim-fugitive.git'
Plug 'git@github.com:tpope/vim-repeat.git'
Plug 'git@github.com:scrooloose/syntastic.git'
Plug 'git@github.com:mxw/vim-jsx.git'
Plug 'git@github.com:isRuslan/vim-es6.git'
Plug 'junegunn/vim-peekaboo'
Plug 'git@github.com:kana/vim-textobj-user.git'
Plug 'git@github.com:jbgutierrez/vim-babel.git'
Plug 'git@github.com:atelierbram/vim-colors_duotones.git'
Plug 'git@github.com:mattn/vim-soundcloud.git'
Plug 'git@github.com:mattn/webapi-vim.git'
Plug 'git@github.com:takac/vim-spotifysearch.git'
Plug 'git@github.com:Valloric/YouCompleteMe.git'
Plug 'git@github.com:heavenshell/vim-jsdoc.git'
Plug 'git@github.com:Quramy/tsuquyomi.git'
Plug 'git@github.com:leafgarland/typescript-vim.git'
Plug 'git@github.com:csscomb/vim-csscomb.git'
Plug 'git@github.com:Quramy/vim-js-pretty-template.git'
Plug 'git@github.com:bdauria/angular-cli.vim.git'
call plug#end()

syntax enable
filetype indent plugin on
set t_Co=256
if has("gui_running")
  set background=dark
  colorscheme duotone-darksea
endif

set nocp
set macligatures
set guifont=Fira\ Code:h16
set smartindent
set cindent
set ruler
set showcmd
set number
set expandtab
set cursorline
set cursorcolumn
hi Normal guifg=white guibg=black
hi CursorColumn term=NONE cterm=NONE ctermbg=Black guibg=Black
set matchtime=1

" Show matching brackets when text indicator is over them
set showmatch

set tabstop=4
set shiftwidth=4

set autoindent
set cindent
set smartindent
set clipboard=unnamed
set noimdisable

" Ignore case when searching
" set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
" set hlsearch
" hi Search cterm=NONE ctermfg=grey ctermbg=blue

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

set colorcolumn=+1        " highlight column after 'textwidth'
" set colorcolumn=+1,+2,+3  " highlight three columns after 'textwidth'
highlight ColorColumn ctermbg=LightGreen guibg=LightGreen

autocmd! InsertLeave * set imdisable|set iminsert=0
autocmd! InsertEnter * set noimdisable|set iminsert=0

set rtp+=/usr/local/Cellar/fzf/0.8.3

""""" easy motion config """"""
" Gif config
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

" These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.
" Without these mappings, `n` & `N` works fine. (These mappings just provide
" different highlight method and have some other features )
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
""""" end """"""

" config smarttab for emmet
"function! s:zen_html_tab()
"  let line = getline('.')
"  " let lineLength=${#line}
"  " if lineLength < 1
"    " return "\<Tab>"
"  if match(line, '<.*>') >= 0
"    return "\<Tab>"
"  endif
"  return "\<c-y>,"
"endfunction
"

"let g:user_emmet_expandabbr_key = '<tab>'
"let g:user_emmet_leader_key = '<tab>'
autocmd FileType html imap <buffer><expr><tab> <sid>zen_html_tab()
let g:startify_custom_header = [
                \'        ᕙ(`▽´)ᕗ  ٩(^‿^)۶',
                \'',
                \'',
                \ ]

" let g:user_emmet_expandabbr_key = '<Tab>'
" tabstop, shiftwidth, softtabstop
let mapleader = ","

let g:jsx_ext_required = 0 " Allow JSX in normal JS files"

" Map for MacVim
map <D-1> 1gt
map <D-2> 2gt
map <D-3> 3gt
map <D-4> 4gt
map <D-5> 5gt
map <D-6> 6gt
map <D-7> 7gt
map <D-8> 8gt
map <D-9> 9gt

" config for YCM
let g:ycm_key_list_select_completion = ['<TAB>', '<Down>', '<S-j>']
let g:ycm_key_list_previous_completion = ['<S-TAB>', '<Up>', '<S-k>']
let g:ycm_autoclose_preview_window_after_insertion = 1

" config for JsDoc
let g:jsdoc_allow_input_prompt = 1

" config for syntastic
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" let g:tsuquyomi_disable_quickfix = 1
" let g:syntastic_typescript_checkers = ['tsuquyomi']
" let g:syntastic_javascript_checkers = ['eslint']

" config for Typescript
let g:syntastic_typescript_tsc_fname = ''
let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow
" Template String Syntax on Typescript
autocmd FileType typescript JsPreTmpl html
autocmd FileType typescript syn clear foldBraces
