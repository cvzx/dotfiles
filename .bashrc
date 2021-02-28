powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /Users/aleh.shapo/Library/Python/2.7/lib/python/site-packages/powerline/bindings/bash/powerline.sh

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export PATH=$PATH:$HOME/Library/Python/2.7/bin
export BAT_THEME="1337"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

alias vimdiff='nvim -d'
export REVIEW_BASE="master"
source /Users/aleh.shapo/perl5/perlbrew/etc/bashrc
