# dotfiles

My personal dotfile configs for working in vim, tmux and zsh ⚡️

## Setup

To properly setup dotfiles with correct version control tracking, run the following:

```bash
git clone --separate-git-dir=$HOME/.myconf https://github.com/BrandonBurrus/dotfiles.git $HOME/myconf-tmp
source ~/myconfig-tmp/.aliases
dot branch master -u origin/master
rm -rf ~/myconf-tmp
(cd ~; dot pull)
```

After this, refresh the shell session and the correct dotfiles should now
be available in the home directory.
