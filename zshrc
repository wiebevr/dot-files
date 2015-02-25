# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="evan"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(archlinux git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
#fortune archer
export PATH=$PATH:/home/plomplot/.gem/ruby/1.9.1/bin

alias p="qdbus org.mpris.clementine /Player org.freedesktop.MediaPlayer.Pause"
alias n="qdbus org.mpris.clementine /Player org.freedesktop.MediaPlayer.Next"

gk () { git diff $* | kompare - ; }
PATH=$PATH:/usr/share/xsb/xsb-3.4.0/bin/
export PATH="$(ruby -e 'puts Gem.user_dir')/bin:/home/wvr/go/bin:$PATH"
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib
export GOPATH=/home/wvr/go
export PYTHONPATH=$PYTHONPATH:/usr/local/lib/python2.7/site-packages/
