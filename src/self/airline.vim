"""""""""""""""""""""""""--airline setting--""""""""""""""""""""""""""""
let g:airline_theme="molokai"
let g:airline_powerline_fonts = 1

let laststatus = 2
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
let g:airline_left_sep = '▶'
let g:airline_left_alt_sep = '❯'
let g:airline_right_sep = '◀'
let g:airline_right_alt_sep = '❮'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'

" 开启tabline
let g:airline#extensions#tabline#enabled=1			"tabline中当前buffer两端的分隔字符
"let g:airline#extensions#tabline#left_sep=' '		"tabline中未激活buffer两端的分隔字符
"let g:airline#extensions#tabline#left_alt_sep='|'	"tabline中buffer显示编号
let g:airline#extensions#tabline#buffer_nr_show=1

" 关闭状态显示空白符号计数
"let g:airline#extensions#whitespace#enabled = 0
"let g:airline#extensions#whitespace#symbol = '!'

