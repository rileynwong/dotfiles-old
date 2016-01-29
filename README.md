# dotfiles
Important stuff kept in [.aliases](.aliases)

#### Setting up workflow from scratch:
###### shell
- [iTerm](https://www.iterm2.com/downloads.html)
- [Zsh](https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH)
- [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
 - [don't let Git use Less for shell output](http://superuser.com/questions/820943/typing-git-log-oneline-in-oh-my-zsh-pipes-to-less)
- [hicat](https://github.com/rstacruz/hicat)
 
 
###### vim
- [Vimrc](https://github.com/amix/vimrc)
- [CommandT](https://github.com/wincent/command-t)
 - check vim ruby version and set before installing!



#### Custom additions:
###### `.vimrc`:
```
" Additional custom
set relativenumber
set clipboard=unnamed

syntax on
filetype plugin indent on

" 80 character margin
set cc=80
```

###### `.aliases`
- `source .aliases` in `.zshrc`
- [Enable vim syntax highlighting for .aliases file](http://superuser.com/questions/178412/how-do-i-enable-syntax-highlighting-for-bash-aliases-in-vim)
