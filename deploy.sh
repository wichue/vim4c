#!/bin/bash

CURRENT_DIR=$(pwd)
mkdir ~/.vim
cd ~/.vim
mkdir after autoload doc plugged plugin self syntax

#目录介绍
#~/.vim/after 	 #会在vim启动时加载，不过需等~/.vim/plugin/加载完成之后才加载after里的内容。
#~/.vim/autoload  #它是一个非常重要的目录，在用到时会自动加载里面的文件，而不是在vim启动时就加载。
#~/.vim/doc       #为插件放置文档的地方。例如:help的时候可以用到。
#~/.vim/pluged    #放置通过plug插件下载其他插件的位置。
#~/.vim/plugin    #存放的是每次启动vim都会被运行一次的插件。
#~/.vim/self		 #自定义的一个目录，用于存放自己编写的vim文件，需source添加到主vim配置里面
#~/.vim/syntax    #语法描述脚本。比如c语言语法相关的插件。

#拷贝配置文件
cp $CURRENT_DIR/src/.vimrc ~
cp $CURRENT_DIR/src/plugin/a.vim ~/.vim/plugin/
cp $CURRENT_DIR/src/autoload/plug.vim ~/.vim/autoload/

cp $CURRENT_DIR/src/self/airline.vim ~/.vim/self/
cp $CURRENT_DIR/src/self/common.vim ~/.vim/self/
cp $CURRENT_DIR/src/self/cscope.vim ~/.vim/self/
cp $CURRENT_DIR/src/self/files.vim ~/.vim/self/
cp $CURRENT_DIR/src/self/indentline.vim ~/.vim/self/
cp $CURRENT_DIR/src/self/nerdtree.vim ~/.vim/self/
cp $CURRENT_DIR/src/self/tags.vim ~/.vim/self/