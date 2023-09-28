vim-shortcut
============

# 用途

run vim command from vim buffer

这个插件允许用户在 .vimsc 文件中通过特定字符开头的行来包含可执行的命令，可以从编辑缓冲区中直接执行。

可以将一些常用命令放在文件中，方便日常工作。

# 使用方法

可以在以 .vimsc 为后缀的文件中使用以下字符开头的行来表示可执行命令：

- 冒号(:)开头的行：执行时不会改变当前的工作路径。
- 叹号(!)开头的行：执行时会将当前工作路径改变为当前文件所在路径，然后执行命令。
- 美元号($)开头的行：执行时会将当前工作路径改变为当前文件所在路径，然后执行命令，同时避免按回车键后继续执行其他命令。

将光标移到可执行的行上，用户只需在 Normal 模式中按回车键即可执行相应的命令。

做这个 vim 插件的起因是自己开发过程中用来辅助觉得非常好用, 为了方便自己在不同的地方用, 就整理了一下放到 github 上了

# 语法说明

```
行内容为 :command 等价于让 Vim 执行 :command
行内容为 !command 等价于让 Vim 执行 :!cd %:p:h && command
行内容为 $command 等价于让 Vim 执行 :silent !cd %:p:h && command
```

# 使用示例

在 xxx.vimsc 文件中包含以下内容，然后可以将光标移动到想要执行的命令的行上，按回车键执行。
```
# 在 .vimsc 文件的当前目录 执行 sudo make install
:cd %:p:h && sudo make install

# 查看 nginx log
:!sudo tail -n 50 /var/log/nginx/error.log
:!sudo tail -n 50 /var/log/nginx/access.log
```

# 通过 vim-plug 安装:

```
# 在 .vimrc 中加入
Plug 'xebecnan/vim-shortcut'

# 然后重新启动 Vim 并执行
:PlugInstall
```

# 通过 vundle 安装:

```
# 在 .vimrc 中加入
Bundle 'xebecnan/vim-shortcut'

# 然后重新启动 Vim 并执行
:BundleInstall
```

by arnan, 20140328
