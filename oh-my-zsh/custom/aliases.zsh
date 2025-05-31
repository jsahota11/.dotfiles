alias edit-aliases='nvim $ZSH_CUSTOM/aliases.zsh'

alias pfetch="PF_INFO=\"title os host uptime pkgs memory\" PF_SEP=\" \" PF_COL1=9 PF_COL2=6 PF_COL3=3 ~/pfetch/pfetch"

alias zshcf="nvim ~/.zshrc"
alias alacf="nvim ~/.alacritty.toml"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias tmuxcf="nvim ~/.tmux.conf"
alias repos="cd ~/Documents/REPOS && ls"
alias nvimcp="cd ~/.config/nvim/lua/custom/plugins && ls"
alias ca="cd ~/Documents/course-assets && ls"
alias kittycf="nvim ~/.config/kitty/kitty.conf"
alias p10kcf="nvim ~/.p10k.zsh"
alias initlua="nvim ~/.config/nvim/init.lua"
alias src-p10kcf="source ~/.p10k.zsh"
alias src-zshcf="source ~/.zshrc"
alias kssh-aviary="kitten ssh sahotaj2@aviary.cs.umanitoba.ca"
alias kssh="kitten ssh"
alias ssha="ssh sahotaj2@aviary.cs.umanitoba.ca"
alias gada="cd ~/Documents/Research/ && ls"
alias scripts="cd ~/.local/share/nemo/scripts/ && ls"
alias dfs="cd ~/.dotfiles && ls"
alias pushdfs="dfs && ga . && gcm \"Lazy commit.\" && gp"

alias start-lb='eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"'
alias start-ss='eval "$(starship init zsh)"'

alias pyenv= 'eval "$(pyenv init --path)"'

alias start-nvm= '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"'  # This loads nvm
alias start-nvm-bc= '[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion'
