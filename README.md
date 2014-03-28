vim-shortcut
============

run vim command from buffer

# 使用方法

以 .vimsc 为后缀创建文件

在 vim 中打开该文件, 把光标移动到以冒号开头行上，处于 normal mode 时按回车键可以执行改行命令

例如:

在 .vimsc 文件的当前目录 执行 sudo make install

:cd %:p:h && sudo make install

查看 nginx log

:!sudo tail -n 50 /var/log/nginx/error.log

:!sudo tail -n 50 /var/log/nginx/access.log


做这个 vim 插件的起因是自己开发过程中用来辅助觉得非常好用, 为了方便自己在不同的地方用, 就整理了一下放到 github 上了

# 使用 vundle 安装:

在 .vimrc 中加入

Bundle 'xebecnan/vim-shortcut'

然后执行

:BundleInstall

by arnan, 20140328

