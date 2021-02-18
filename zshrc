source '/usr/share/zsh-antigen/antigen.zsh'

# Load the oh-my-zsh's library.
antigen use oh-my-zsh
# Interpret return key as command accept line
bindkey '^[OM' accept-line 

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found

antigen bundle git
antigen bundle npm
antigen bundle encode64
antigen bundle colorize
antigen bundle github
antigen bundle brew
antigen bundle rails
antigen bundle python
antigen bundle ruby
antigen bundle capistrano
antigen bundle bundler
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions

# Load the theme.
antigen theme wild-berries

# Tell Antigen that you're done.
antigen apply
if [[ -r /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh ]]; then
source /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh
fi
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias python3='/usr/bin/python3.7' 

# export PATH="$PATH:$HOME/dev/flutter/bin"
# export PATH="$PATH:$HOME/dev/flutter"
export PATH="$PATH:$HOME/.local/bin"

neofetch
