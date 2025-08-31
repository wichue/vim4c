" F2打开/关闭NERDTree
map <F2> :NERDTreeMirror<CR>
map <F2> :NERDTreeToggle<CR>

" 打开vim时,自动打开NERDTree
autocmd vimenter * NERDTree
wincmd w
autocmd vimEnter * wincmd w

" 修改树的显示图标
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
let g:NERDTreeWinPos = 'left'				"窗口位置
let g:NERDTreeSize = 30						"窗口尺寸
let g:NERDTreeShowLineNumbers = 1			"窗口是否显示行号
let g:NERDTreeHidden = 0					"不显示隐藏文件

" 当界面只留有Nerdtree时，会自动退出vim
function! AutoExitTree()
  if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree()
    quit
  endif
endfunction
autocmd BufEnter * call AutoExitTree()

" 判断Nerdtree是否是处于打开状态
function! IsNERDTreeOpen()
  return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
endfunction

" Nerdtree打开时，实时同步当前文件对应文件目录树的位置
function! SyncTree()
  if &modifiable && IsNERDTreeOpen() && strlen(expand('%')) > 0 && !&diff
    NERDTreeFind
    wincmd p
  endif
endfunction

" 高亮当前文件所在行
autocmd BufEnter * call SyncTree()

