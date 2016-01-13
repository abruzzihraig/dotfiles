call plug#begin('~/.vim/plugged')

Plug 'junegunn/seoul256.vim'
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-sensible'
Plug 'rstacruz/vim-hyperstyle'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }
Plug 'git@github.com:bling/vim-airline'
Plug 'git@github.com:kien/ctrlp.vim.git'
Plug 'git@github.com:editorconfig/editorconfig-vim.git'
Plug 'git@github.com:mattn/emmet-vim.git'
Plug 'git@github.com:digitaltoad/vim-jade.git'
Plug 'git@github.com:wavded/vim-stylus.git'
Plug 'git@github.com:ervandew/supertab.git'
Plug 'git@github.com:mhinz/vim-startify.git'
Plug 'git@github.com:tpope/vim-characterize.git'
Plug 'git@github.com:zenorocha/dracula-theme.git'
Plug 'git@github.com:Lokaltog/vim-easymotion.git'
Plug 'git@github.com:tpope/vim-eunuch.git'
Plug 'git@github.com:Shougo/vimproc.vim.git'
Plug 'git@github.com:Shougo/vimshell.vim.git'
Plug 'git@github.com:glts/vim-cottidie.git'
Plug 'git@github.com:tpope/vim-surround.git'
Plug 'git@github.com:suan/vim-instant-markdown.git'
Plug 'git@github.com:vimwiki/vimwiki.git'
Plug 'git@github.com:groenewege/vim-less.git'
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
Plug 'git@github.com:marijnh/tern_for_vim.git'
Plug 'git@github.com:isRuslan/vim-es6.git'
Plug 'junegunn/vim-peekaboo'
Plug 'git@github.com:kana/vim-textobj-user.git'
Plug 'git@github.com:terryma/vim-multiple-cursors.git'
Plug 'git@github.com:kien/rainbow_parentheses.vim.git'
call plug#end()

syntax enable
filetype indent plugin on
set clipboard=unnamed
set smartindent
set cindent
set ruler
set showcmd
set number
set expandtab
set cursorline
set matchtime=1
set showmatch
set tabstop=4
set shiftwidth=4
"set t_Co=256
set rtp+=/usr/local/Cellar/fzf/0.8.5
set cmdheight=2
set guifont=Sauce\ Code\ Powerline\ ExtraLight:h28

let g:airline_powerline_fonts=1
"""""" easy motion config """"""
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
"""""" end """"""

" config smarttab for emmet
function! s:zen_html_tab()
  let line = getline('.')
  " let lineLength=${#line}
  " if lineLength < 1
    " return "\<Tab>"
  if match(line, '<.*>') >= 0
    return "\<Tab>"
  endif
  return "\<c-y>,"
endfunction
autocmd FileType html imap <buffer><expr><tab> <sid>zen_html_tab()
let g:startify_custom_header = [
                \'        ᕙ(`▽´)ᕗ  ٩(^‿^)۶',
                \'',
                \'',
                \ ]

autocmd VimEnter * nested CottidieTip

" let g:user_emmet_expandabbr_key = '<Tab>'
" tabstop, shiftwidth, softtabstop

" Rainbow
let g:rbpt_colorpairs = [
    \ ['black',       'SeaGreen3'],
    \ ['brown',       'RoyalBlue3'],
    \ ['brown',       'firebrick3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ]

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
