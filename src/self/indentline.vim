"""""""""""""""""""""""""--indentline setting--""""""""""""""""""""""""""""
let g:indentLine_enabled = 1
let g:autopep8_disable_show_diff = 1

"""""""""""""""""""""""""--easymotion setting--""""""""""""""""""""""""""""
nmap ss <Plug>(easymotion-s2)

""""""""""""""""""""""""""""--ale setting--""""""""""""""""""""""""""""""""
" 自定义跳转错误行快捷键
nmap <leader>k <Plug>(ale_previous_wrap)
nmap <leader>j <Plug>(ale_next_wrap)

let g:ale_sign_column_always = 1            " 保持侧边栏可见
let g:ale_sign_error = '>>'                 " 改变错误标识
let g:ale_sign_warning = '--'               " 改变警告标识

" 改变命令行消息
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'

" 添加检测完成后回调
augroup YourGroup
    autocmd!
    autocmd User ALELint call YourFunction()
augroup END

