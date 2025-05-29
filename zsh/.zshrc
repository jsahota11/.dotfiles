if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

# case-sensitive completion
CASE_SENSITIVE="false"

# remind me of updates, not "auto" or "off"
zstyle ':omz:update' mode reminder

# Otherwise it says my machine name and stuff on the tab
DISABLE_AUTO_TITLE="true"

# auto-correction.
ENABLE_CORRECTION="true"

# while waiting for completion
COMPLETION_WAITING_DOTS="%F{red}waiting...%f"

# add pyenv to path
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
plugins=(
	git
	you-should-use
	autojump
	git-extras
	# npm
	extract

	# uncomment to use, but these slow down shell startup
	# pyenv (also uncomment the PATH manip above)
	# pipenv
	# virtualenv
)

source $ZSH/oh-my-zsh.sh

# User configuration

export MANPATH="/usr/local/man:$MANPATH"

export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
export EDITOR='nvim'

source $ZSH_CUSTOM/aliases.zsh # this is where all the aliases are
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

ZVM_INSERT_MODE_CURSOR=$ZVM_CURSOR_UNDERLINE
ZVM_OPPEND_MODE_CURSOR=$ZVM_CURSOR_BLOCK
ZVM_NORMAL_MODE=$ZVM_CURSOR_BEAM


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


# Set any settings or overrides here
# prompt belak
bindkey -e

source /usr/share/autojump/autojump.zsh
. /usr/share/autojump/autojump.zsh


echo -ne '\e[4 q'
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=#fc3db0'
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#9f21b5,underline, standout"
LS_COLORS=$LS_COLORS:'di=1;33:' ; export LS_COLORS

export NVM_DIR="$HOME/.nvm"

(( ! ${+functions[p10k]} )) || p10k finalize
fpath+=${ZDOTDIR:-~}/.zsh_functions
