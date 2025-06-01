# Meta
alias edit-aliases='nvim $ZSH_CUSTOM/aliases.zsh'

# Config files
alias zshcf="nvim ~/.zshrc"
alias alacf="nvim ~/.alacritty.toml"
alias tmuxcf="nvim ~/.tmux.conf"
alias kittycf="nvim ~/.config/kitty/kitty.conf"
alias p10kcf="nvim ~/.p10k.zsh"

# Plugins
alias zshp="nvim ~/.zsh_plugins.txt"
alias nvimcp="cd ~/.config/nvim/lua/custom/plugins && ls"

# Commonly-accessed directories
alias repos="cd ~/Documents/REPOS && ls"
alias ca="cd ~/Documents/course-assets && ls"
alias gada="cd ~/Documents/Research/ && ls"
alias dfs="cd ~/.dotfiles && ls"

# Not enough for a category
alias pfetch="PF_INFO=\"title os host uptime pkgs memory\" PF_SEP=\" \" PF_COL1=9 PF_COL2=6 PF_COL3=3 ~/pfetch/pfetch"
alias pushdfs="dfs && ga . && gcm \"Lazy commit.\" && gp"
alias ssha="ssh sahotaj2@aviary.cs.umanitoba.ca"
alias initlua="nvim ~/.config/nvim/init.lua"

# venv stuff
alias pyenv= 'eval "$(pyenv init --path)"'
alias start-nvm= '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"'  # This loads nvm
alias start-nvm-bc= '[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion'

# Optimal directory traversal
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
