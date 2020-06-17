# dotfiles

My personal dotfile configs for working in vim and zsh

## Setup

```
git clone --separate-git-dir=$HOME/.myconf https://github.com/BrandonBurrus/dotfiles.git $HOME/myconf-tmp
source ~/myconfig-tmp/.aliases
rm -r ~/myconf-tmp
(cd ~; dotfiles pull origin master)
```


