"""""""""""""""""""""""""""""common settings"""""""""""""""""""""""""
set nu							" 设置行号
syntax on
syntax enable
set nohlsearch
set nocompatible

"缩进宽度设置
set noexpandtab
set smartindent
set tabstop=4   				" tab宽度
set shiftwidth=4
set autoindent					" 自动缩进
set smarttab
set showmatch

set fileformat=unix 			" 保存文件格式
set textwidth=79 				" 行最大宽度
set confirm						" 未保存退出时提示
"set list

"搜索逐字符高亮
set hlsearch
set incsearch

set cmdheight=2					" 设定命令行的行数为 2
set laststatus=2				" 显示状态栏 (默认值为 1, 无法显示状态栏)

set cino=g0,:0					" 对齐风格
"set spell						" 打开拼写检查

set mouse=c						" 设置鼠标可用
set cursorline					" 高亮当前行
set ignorecase					" 忽略大小写
colorscheme desert

set autoread
set foldenable					" 允许折叠
set foldmethod=manual 			" 手动折叠

set magic						" 设置魔术
set ruler						" 打开状态栏标尺
set showcmd						" 显示输入的命令
set guifont=Courier_New:h10:cANSI		" 设置字体

" 保存光标的位置
autocmd BufReadPost *
			\ if line("'\"")>0 && line("'\"") <= line("$") |
			\	exe "normal g'\"" |
			\ endif
"""""""""""""""""""""""""--map setting--""""""""""""""""""""""""""""
" 转移串口聚焦
nnoremap	<C-w> <C-W>w
nnoremap	<C-l> <C-W>l
nnoremap	<C-h> <C-W>h

" 跳转到.c或.h文件
nnoremap	A :A<CR>

" 回退撤回
nnoremap	U <C-r>

"保存和退出vim
nnoremap	,w :w<CR>
nnoremap	,q :q<CR>

" 取消vim自带的高亮功能
nnoremap	,b :noh<CR>

" 屏幕分割
nnoremap	,s :sp<CR>			" 竖屏分割
nnoremap	,v :vsp<CR>			" 横屏分割

" 打开FZF搜索（ctrl + p），查看上一次搜索情况(ctrl + e)
nnoremap	,f :Files<CR>
nnoremap	,e :Buffers<CR>

" 下一个buffer，上一个buffer，删除buffer
nnoremap	bn :bn<CR>
nnoremap	bp :bp<CR>
nnoremap	bd :bd<CR>

"""""""""""""""""""""""""--gitgutter setting--""""""""""""""""""""""""""""
set updatetime=1000
highlight GitGutterAdd		ctermfg=blue
highlight GitGutterChange	ctermfg=green
highlight GitGutterDelete	ctermfg=red

