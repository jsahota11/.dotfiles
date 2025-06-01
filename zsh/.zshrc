# --- Instant prompt from Powerlevel10k ---
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# --- Path Setup ---
export PATH="$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export MANPATH="/usr/local/man:$MANPATH"
export LANG="en_US.UTF-8"
export EDITOR="nvim"
export TERM="xterm-256color"
export NVM_DIR="$HOME/.nvm"
export ZSH_CUSTOM="$HOME/.dotfiles/zsh"

# --- Antidote plugin manager ---
# source "/home/jatinder/.antidote/antidote.zsh"

# Enable Zsh completions for plugins like git, etc.
# autoload -Uz compinit
# compinit


zsh_plugins=${ZDOTDIR:-$HOME}/.zsh_plugins
if [[ ! ${zsh_plugins}.zsh -nt ${zsh_plugins}.txt ]]; then
	(
		source /home/jatinder/.antidote/antidote.zsh
		antidote bundle <${zsh_plugins}.txt >${zsh_plugins}.zsh
	)
fi

source ${zsh_plugins}.zsh

# Load plugins from GitHub
# antidote load ${ZDOTDIR:-HOME}/.zsh_plugins.txt

# --- Powerlevel10k prompt (optional) ---
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
(( ! ${+functions[p10k]} )) || p10k finalize

# --- Cursor shapes for ZVM (zsh-vi-mode) ---
ZVM_INSERT_MODE_CURSOR=$ZVM_CURSOR_UNDERLINE
ZVM_OPPEND_MODE_CURSOR=$ZVM_CURSOR_BLOCK
ZVM_NORMAL_MODE=$ZVM_CURSOR_BEAM

# --- Other Zsh settings ---
CASE_SENSITIVE="false"
DISABLE_AUTO_TITLE="false"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="%F{red} <waiting...> %f"
bindkey -e

# --- Styling tweaks ---
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=#f74349'
LS_COLORS=$LS_COLORS:'di=1;33:' ; export LS_COLORS

# --- Source your custom aliases ---
source "$ZSH_CUSTOM/aliases.zsh"

# --- Autojump ---
[[ -s /usr/share/autojump/autojump.zsh ]] && source /usr/share/autojump/autojump.zsh

# --- fpath additions ---
fpath+=${ZDOTDIR:-~}/.zsh_functions

# --- Fix terminal cursor style ---
echo -ne '\e[4 q'


# Set LS_COLORS via dircolors
eval "$(dircolors -b)"

# Optional: override directory color (bold yellow)
LS_COLORS=$LS_COLORS:'di=1;33:' ; export LS_COLORS

# Alias ls to use colors
alias ls='ls --color=auto'

