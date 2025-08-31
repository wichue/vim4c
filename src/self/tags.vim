" F3打开/关闭taglist
" F4重新生成tags文件，并更新taglist
map <F3> :TlistToggle<CR>
map <F4> :!ctags -R --c-kinds=+p --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
			\  :!cscope -Rbqk <CR> 
			\  :TlistUpdate<CR>
imap <F4> <ESC>:!ctags -R --c-kinds=+p --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR> :TlistUpdate<CR>

"""""""""""""""""""""""""--ctags setting--""""""""""""""""""""""""""""""
set tags=~/.ctags/tags,tags

"""""""""""""""""""""""""--taglist setting--"""""""""""""""""""""""""""""
let Tlist_Show_One_File=1				"只显示当前文件的tags
let Tlist_Ctags_Cmd='ctags'
let Tlist_WinWidth=40					"设置taglist宽度
let Tlist_Exit_OnlyWindow=1				"tagList窗口是最后一个窗口，则退出Vim
let Tlist_Use_Right_Window=1			"在Vim窗口右侧显示taglist窗口
let Tlist_Process_File_Always=1
let Tlist_Compart_Format=1				"压缩方式
let Tlist_Close_On_Select=1				"在选择了tag后自动关闭taglist窗口
let Tlist_Auto_Update=1					"随文件自动更新

"""""""""""""""""""""""""--omnicppcomplete setting--"""""""""""""""""""
"该插件是基于Ctags来进行补全的
filetype plugin indent on
set completeopt=menu,longest
let OmniCpp_MayCompleteDot=1			"打开.提示
let OmniCpp_MayCompleteArrow=1			"打开->提示
let OmniCpp_MayCompleteScope=1			"打开::提示
let OmniCpp_NamespaceSearch=1			"打开namespace
let OmniCpp_GlobalScopeSearch=1			"打开全局搜索
let OmniCpp_DefaultNamespace=["std"]	"默认命名空间为std
let OmniCpp_ShowPrototypeInAbbr=1		"打开函数提示function
let OmniCpp_SelectFirstItem=2			"自动定位到第二个

