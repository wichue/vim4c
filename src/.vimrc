"""""""""""""""""""""""""load plug module""""""""""""""""""""""""""""
call plug#begin()
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
Plug 'godlygeek/tabular'
Plug 'mileszs/ack.vim'
Plug 'w0rp/ale'
Plug 'brookhong/cscope.vim'
"Plug 'Yggdroot/indentLine'
Plug 'easymotion/vim-easymotion'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

""""""""""""""""""common、map和gitgutter settings"""""""""""""""""""""
source ~/.vim/self/common.vim

"配置新创文件初始化内容
"source ~/.vim/self/files.vim

""""""""""""""""""""""""--Nerdtree setting--"""""""""""""""""""""""""
source ~/.vim/self/nerdtree.vim

"""""""""""""""""""""""""--cscope setting--"""""""""""""""""""""""""
source ~/.vim/self/cscope.vim

"""""""""""""--ctags、taglist和omnicppcomplete setting--"""""""""""""
source ~/.vim/self/tags.vim

"""""""""""""""""""""""""--airline setting--"""""""""""""""""""""""""
source ~/.vim/self/airline.vim

""""""""""""""""""--indentline easymotion setting--""""""""""""""""""
"source ~/.vim/self/indentline.vim
