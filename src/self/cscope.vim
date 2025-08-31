if has("cscope")
    set csprg=/usr/bin/cscope 
    set csto=0  " cscope数据将会被优先查找
    set nocsverb

    " 添加当前目录下的数据库
    if filereadable("cscope.out")
        cs add cscope.out
    " 添加环境变量中指定的数据库
    elseif $CSCOPE_DB != ""
        cs add $CSCOPE_DB
    endif

    set cscopequickfix=s-,g-,c-,f-,t-,d-,i-,e-

    " 快捷键映射
    " 查找C语言符号，即查找函数名、宏、枚举值等出现的地方
    nnoremap <leader>fs :cs find s <c-r>=expand("<cword>")<cr><cr>:copen<cr>

    " 查找函数、宏、枚举等定义的位置
    nnoremap <leader>fg :cs find g <c-r>=expand("<cword>")<cr><cr>:copen<cr>

    " 查找本函数调用的函数
    nnoremap <leader>fd :cs find d <c-r>=expand("<cword>")<cr><cr>:copen<cr>

    " 查找调用本函数的函数
    nnoremap <leader>fc :cs find c <c-r>=expand("<cword>")<cr><cr>:copen<cr>

    " 查找指定的字符串
    nnoremap <leader>ft :cs find t <c-r>=expand("<cword>")<cr><cr>:copen<cr>

    " 查找egrep模式，相当于egrep功能，但查找速度快多了
    nnoremap <leader>fe :cs find e <c-r>=expand("<cword>")<cr><cr>:copen<cr>

    " 查找并打开文件，类似vim的find功能
    nnoremap <leader>ff :cs find f <c-r>=expand("<cfile>")<cr><cr>:copen<cr>

    " 查找包含本文件的文件
    nnoremap <leader>fi :cs find i <c-r>=expand("<cfile>")<cr><cr>:copen<cr>

    nnoremap <c-j> :cnext<cr>      " 切换至下一个cscopequickfix的搜索结果 映射为 ctrl+j
    nnoremap <c-k> :cprev<cr>      " 切换至上一个cscopequickfix的搜索结果 映射为 ctrl+k

    nnoremap <leader>t :copen<cr>  " 打开cscopequickfix窗口
    autocmd FileType qf nnoremap <buffer> <CR> <CR>:cclose<CR>
endif

