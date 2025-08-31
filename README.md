# 概况
vim的强大毋庸置疑，使用vim敲代码不但显得逼格高，在某些场景下vim也是为数不多的可用IDE选择。

本章介绍在centos/ubuntu环境下，搭建vim的C/C++开发环境，使用一系列插件和快捷键，使得vim在开发时拥有类似传统IDE的功能，比如左边栏文件/文件夹列表，跳转到定义，查找函数、宏、枚举，模糊查找文件，屏幕分割，切换头文件/源文件，状态栏等。


# 安装和部署
1、运行部署脚本，会自动安装到家目录。

```shell
deploy.sh
```
2、安装依赖ctags和cscope，Vim-plug、a.vim、fd 和 fzf会自动安装，如遇到问题也可以参考下面步骤手动安装。

3、安装插件，vim通常启动会自动安装，或手动安装，失败则多尝试几次。
```shell
:PlugInstall
```


## 插件安装

### ctags
ctags：能搭建起代码里面函数、变量和宏的定义跳转功能，方便代码阅读的工具，但是缺陷是当有多个函数定义点时，会直接跳转到记录的第一个，不会给用户选择的余地。
```shell
yum install ctags
apt-get install ctags
```

### cscope
cscope：能通过这个插件快速的找到函数或变量的定义位置、被调用位置或快速查找某个字符串，缺陷在于目前只支持C和C++，且该插件还提供一个界面，用于选择跳转到那个文件，这个插件一定程度上补齐了ctags的短板。
```shell
yum install cscope
apt-get install cscope
```

Vim-plug和a.vim项目已包含，如想使用其他版本，可安装下面步骤重新下载。

### Vim-plug
Vim-plug 是一个Vim插件管理器，.vimrc中配置的插件会自动安装。
```shell
git clone git@github.com:junegunn/vim-plug.git
cp plug.vim ~/.vim/autoload
cp plug.txt ~/.vim/doc
# 在线下载：
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
curl -fLo ~/.vim/doc/plug.txt --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/doc/plug.txt
```

### 切换头文件和源文件
```shell
http://www.vim.org/scripts/script.php?script_id=31
#下载a.vim，拷贝到~/.vim/plugin
```

### fd 和 fzf
通用命令行模糊查找器，用作搜索文件和命令行历史。如果Vim-plug安装fzf失败，可以手动安装。
```shell
# 下载fd二进制
https://github.com/sharkdp/fd/releases
#centos7可用版本：fd-v10.2.0-x86_64-unknown-linux-musl.tar.gz
cp fd /usr/bin

# 下载fzf
# 使用git下载和安装
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
# 或下载fzf二进制
https://github.com/junegunn/fzf/releases
#centos7可用版本：fzf-0.55.0-linux_amd64.tar.gz
cp fzf ~/.fzf/bin
```

## 插件介绍
- .vimrc：通常位于家目录下(~/.vimrc),通过编辑Vimrc文件,用户可以设置环境变量、定义快捷键、启用或禁用特定功能,以及调整Vim的外观和性能。

- fzf：			通用命令行模糊查找器，用作搜索文件和命令行历史，非常实用的一个插件
- nerdtree：		树形方式展示文件系统，用于从目录结构中手动找到文件
- ale： 			代码异步检测插件，可以实时/并发显示错误语法，在标识栏、状态栏以及命令行查看信息
- cscope：		ctags的增强版，前面有介绍
- indentline：	一个用细垂直线显示缩进级别的vim插件
- easymotion：	使用键盘移动光标的插件，超强的光标移动插件，能快速移动到你想要移动到的位置
- airline：		美化状态栏插件，使得整个界面好看很多
- gitgutter：		在sign列中显示git diff的Vim插件，它显示已添加、修改或删除的行，还可以预览、暂存和撤消单个hunk


## 快捷键
```shell
U	#撤销回退
,w	#save
,q	#quit

# 光标移动到文档最上面
gg
# 光标移动到文档最下面
G

# 光标回退到上一次位置
ctrl+o	# 可回退到其他文件
''		# 只能在当前文件回退

# 光标移动到本行下一个单词
w
# 光标跳转到本行的一个字母
fs	# 跳转到下一个字母s的位置

#插入
i       # 在当前光标插入
a       # 在当前光标的后面插入
o       # 新建一行插入

yy		#复制当前行
yw		#复制光标所在单词，从光标开始的位置复制
dd		#剪切当前行
p	#小写，复制到光标后
P	#大写，复制到光标前

# 复制多行
V	# 大写V进入可视模式，选中本行
5j	# 向下选中5行，或使用向下移动光标选中多行
y	# 复制
d	# 剪切

# 选中光标所在单词
v	#1.进入可视化模式
e	#2.选中光标单词

# vim 快捷键
F2		# 打开/关闭 NERDTree(左边栏)
ctrl+w	# 聚焦在左右窗口切换
ctrl+h	# 聚焦到左窗口
ctrl+l	# 聚焦到右窗口

bn	#next buffer
bp	#previous buffer
bd  #delete buffer
:bd 2 # 关闭特定编号buffer，如果是当前打开的则关闭所有

# fzf
,f	# fzf搜索
,e	# 查看上一次搜索结果

# 屏幕分割
,s		# 竖屏分割
:sp		# 竖屏分割
,v		# 横屏分割
:vsp	# 横屏分割

# ctags 
F3	# 打开/关闭taglist
F4	# 重新生成tags文件，并更新taglist
ctrl+]	# 跳转到字段定义的位置

# cscope
# 查找C语言符号，即查找函数名、宏、枚举值等出现的地方
:cs find s 

# 查找函数、宏、枚举等定义的位置
:cs find g 

# 查找本函数调用的函数
:cs find d 

# 查找调用本函数的函数
:cs find c 

# 查找指定的字符串
:cs find t 

# 查找egrep模式，相当于egrep功能，但查找速度快多了
:cs find e 

# 查找并打开文件，类似vim的find功能
:cs find f 

# 查找包含本文件的文件
:cs find i 

# 找到多个结果，可使用下面快捷键切换
ctrl+j " 切换至下一个 cscopequickfix 的搜索结果 映射为 ctrl+j
ctrl+k " 切换至上一个 cscopequickfix 的搜索结果 映射为 ctrl+k

:copen " 打开 cscopequickfix 窗口

# 切换源文件和头文件
:A	在新Buffer中切换到c\h文件
:AS	横向分割窗口并打开c\h文件
:AV	纵向分割窗口并打开c\h文件
:AT	新建一个标签页并打开c\h文件
```
