DOTFILES_REPO=~/.dotfiles-wsl
export DOTFILES_REPO

alias dotfiles="/usr/bin/git --git-dir=$DOTFILES_REPO/.git --work-tree=$DOTFILES_REPO"

# emacs distributions
alias spacemacs="emacs --with-profile spacemacs"
alias doomemacs="emacs --with-profile doom"
