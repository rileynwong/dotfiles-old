# dotfiles
Important stuff kept in [.aliases](.aliases)

#### Setting up workflow from scratch:
###### shell
- [iTerm](https://www.iterm2.com/downloads.html)
- [Zsh](https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH)
- [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
 - [don't let Git use Less for shell output](http://superuser.com/questions/820943/typing-git-log-oneline-in-oh-my-zsh-pipes-to-less)
 - Append `.bashrc` and `.bash_profile` to `.zshrc` 
  - `cat .bashrc .bash_profile >> .zshrc`
- [hicat](https://github.com/rstacruz/hicat)
 - `alias cat=hicat`
- [Ag](https://github.com/ggreer/the_silver_searcher) - search file contents (can run in vim)
 

###### vim
- [Vimrc](https://github.com/amix/vimrc)
- [CommandT](https://github.com/wincent/command-t)
 - check vim ruby version and set before installing!
 - **OR use [CtrlP](https://github.com/ctrlpvim/ctrlp.vim) because it's less of a pain in the ass to set up
- [YouCompleteMe](http://www.alexeyshmalko.com/2014/youcompleteme-ultimate-autocomplete-plugin-for-vim/) - Autocomplete for vim

- If vim is missing clipboard support (if `vim --version` shows `-clipboard`):
 - `brew install macvim --with-override-system-vim --with-python3`
 - `alias vim='mvim -v'`


###### other computer applications
- [CopyClip](https://itunes.apple.com/us/app/copyclip-clipboard-history/id595191960?mt=12) - Clipboard History Manager
- [ShiftIt](https://github.com/fikovnik/ShiftIt) - Keyboard shortcuts for window sizes
- [Alfred](https://www.alfredapp.com/)


#### Custom additions:
###### `.oh-my-zsh/themes/gallois.zsh-theme`:
```
# Depends on the git plugin for work_in_progress()

ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}%{$fg[green]%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="]%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}*%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""

#Customized git status, oh-my-zsh currently does not allow render dirty status before branch
git_custom_status() {
  local cb=$(git_current_branch)
  if [ -n "$cb" ]; then
    echo "$(parse_git_dirty)%{$fg_bold[yellow]%}$(work_in_progress)%{$reset_color%}$ZSH_THEME_GIT_PROMPT_PREFIX$(git_current_branch)$ZSH_THEME_GIT_PROMPT_SUFFIX"
  fi
}

# Combine it all into a final right-side prompt
RPS1='$(git_custom_status) $EPS1'

PROMPT='%{$fg[green]%}[%D{%m-%d-%y %H:%M:%S}] %{$fg[cyan]%}[%~% ]%(?.%{$fg[green]%}.%{$fg[red]%})%B$%b '
```

###### `.vimrc`:
Comment out spacebar mapping in `basic.vim`:


```
" Custom
set relativenumber
set clipboard=unnamed
set mouse=a
set splitright

syntax on
filetype plugin indent on

" 80 character margin
set cc=80

" Ctrl P
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_show_hidden = 1

nnoremap <Leader>t :CtrlP ~
nnoremap <Leader>r :CtrlP

" Map spacebar to leader key
map <space> ,

" Select all text in buffer
map <Leader>a ggVG

" Insert newline without going into insert mode
nnoremap <Enter> o<Esc>

" Set iTerm tab title to filename when vim is open
autocmd BufEnter * let &titlestring = expand("%:t")
set title

```

In `extended.vim`, replace:
```
map <leader>eb :e! ~/.vim_runtime/vimrcs/basic.vim<cr>
map <leader>ee :e! ~/.vim_runtime/vimrcs/extended.vim<cr>
```

###### `.aliases`
- `source .aliases` in `.zshrc`
- [Enable vim syntax highlighting for .aliases file](http://superuser.com/questions/178412/how-do-i-enable-syntax-highlighting-for-bash-aliases-in-vim)
