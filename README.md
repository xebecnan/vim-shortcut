vim-shortcut
============

run vim command from buffer

# 使用方法

以 .vimsc 为后缀创建文件

插件会将文件中以冒号开头的行和以叹号开头的行识别为可执行，normal mode把光标移到可执行的行上按回车就可以直接执行

* 冒号开头的行 执行时不会改变当前的工作路径
* 叹号开头的行 执行时会先将当前工作路径改到当前文件路径

!command 等价于 :cd %:p:h && command


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

