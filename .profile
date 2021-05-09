# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# Note: Bash on Windows does not currently apply umask properly.
if [[ "$(umask)" = "0000" ]]; then
    umask 0022
fi

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# TODO find out if xserver is running then run this
#if [ -f "$HOME/.Xmodmap" ] ; then
#    if [ -x /usr/bin/xmodmap ]; then
#        xmodmap $HOME/.Xmodmap
#    fi
#fi

#if [ -d "$HOME/.emacs.d/bin" ] ; then
#    PATH="$HOME/.emacs.d/bin:$PATH"
#fi

# for doom-emacs
if [ -d "$HOME/doom-emacs/bin" ] ; then
    PATH="$HOME/doom-emacs/bin:$PATH"
fi


export EDITOR=vim

# Add colors to the less and man commands.
export LESS=-R
export LESS_TERMCAP_mb="$(printf '%b' '[1;31m')"; a="${a%_}"
export LESS_TERMCAP_md="$(printf '%b' '[1;36m')"; a="${a%_}"
export LESS_TERMCAP_me="$(printf '%b' '[0m')"; a="${a%_}"
export LESS_TERMCAP_so="$(printf '%b' '[01;44;33m')"; a="${a%_}"
export LESS_TERMCAP_se="$(printf '%b' '[0m')"; a="${a%_}"
export LESS_TERMCAP_us="$(printf '%b' '[1;32m')"; a="${a%_}"
export LESS_TERMCAP_ue="$(printf '%b' '[0m')"; a="${a%_}"
