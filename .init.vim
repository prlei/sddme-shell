
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" markdown plugin
" VIM MARKDOWN RUNTIME FILES
Plug 'plasticboy/vim-markdown'

" markdown toc
Plug 'mzlogin/vim-markdown-toc'

" Initialize plugin system
call plug#end()

" my keys
nmap fe :CocCommand explorer ~/hepbum/document/docs<CR>
nmap nt :NERDTreeToggle ~/hepbum/document/docs<CR>

" config
" 禁止vim-markdown插件自动折叠
let g:vim_markdown_folding_disabled = 1
"取消储存时自动更新目录
let g:vmt_auto_update_on_save = 0
