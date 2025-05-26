alias edit-aliases='nvim $ZSH_CUSTOM/aliases.zsh'

alias zshcf="nvim ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
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
alias gada="cd ~/Documents/Research/ && ls"
alias scripts="cd ~/.local/share/nemo/scripts/ && ls"

alias start-lb='eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"'
alias start-ss='eval "$(starship init zsh)"'

alias pyenv= 'eval "$(pyenv init --path)"'

alias start-nvm= '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"'  # This loads nvm
alias start-nvm-bc= '[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion'

alias neofetch='neofetch --source "$(python3 ~/.config/neofetch/ascii-rotation/random-ascii.py)"'
