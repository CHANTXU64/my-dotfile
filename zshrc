case "$OSTYPE" in
  solaris*) OperatorSystem="solaris" ;;
  darwin*)  OperatorSystem="darwin" ;; 
  linux*)   OperatorSystem="linux" ;;
  bsd*)     OperatorSystem="bsd" ;;
  msys*)    OperatorSystem="msys" ;;
  *)        OperatorSystem="" ;;
esac

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$PATH:~/.local/bin/:~/bin/:~/go/bin/

export RANGER_LOAD_DEFAULT_RC=FALSE

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="daveverwer"
# ZSH_THEME="robbyrussell"

if [[ $OperatorSystem = "darwin" ]]; then
    PROMPT='[%{$fg[green]%}%n@darwin%{$reset_color%}:%{$fg_bold[blue]%}%2~%{$reset_color%} %{$fg_bold[yellow]%}%D{%H:%M}%{$reset_color%}]%(!.#.$) '
elif [[ $OperatorSystem = "linux" ]]; then
    PROMPT='[%{$fg[green]%}%n@linux%{$reset_color%}:%{$fg_bold[blue]%}%2~%{$reset_color%} %{$fg_bold[yellow]%}%D{%H:%M}%{$reset_color%}]%(!.#.$) '
else
    PROMPT='[%{$fg[green]%}%n%{$reset_color%}:%{$fg_bold[blue]%}%2~%{$reset_color%} %{$fg_bold[yellow]%}%D{%H:%M}%{$reset_color%}]%(!.#.$) '
fi

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[red]%}‹"
ZSH_THEME_GIT_PROMPT_SUFFIX="›%{$reset_color%}"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    # zsh-autosuggestions
    # zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias r='ranger'
alias info='info --vi-keys'

alias del="trash"
alias rm="echo Use 'del', or the full path i.e. '/bin/rm'"

alias gdb="cgdb -q"

alias vi="vim -u ~/.vim/base.vim"

export FZF_DEFAULT_COMMAND="rg --files"

# export PATH="/usr/local/opt/gnu-getopt/bin:$PATH"
# export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
# alias pip3.9="/opt/homebrew/Cellar/python@3.9/3.9.14/bin/pip3.9"

alias laz="lazygit"

alias f="floaterm"

# alias python="python3.9"
# alias python3="python3.9"

alias bc="bc -l"

alias setproxy="export https_proxy=socks5://127.0.0.1:10808 && export http_proxy=socks5://127.0.0.1:10808"
alias unsetproxy="unset https_proxy && unset http_proxy"

export PATH="/opt/homebrew/opt/openjdk@11/bin:$PATH"

export GOPATH="/Users/chantxu/go"

export PATH="/opt/homebrew/opt/llvm/bin:$PATH"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# alias make="gmake"
# alias tar="gtar"
# alias find="gfind"
# alias xargs="gxargs"
# alias awk="gawk"
# export PATH="/opt/homebrew/opt/gnu-getopt/bin:$PATH"
# export PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"
# export PATH="/opt/homebrew/opt/findutils/libexec/gnubin:$PATH"
# export PATH="/opt/homebrew/opt/gnu-sed/libexec/gnubin:$PATH"
# export PATH="/opt/homebrew/opt/grep/libexec/gnubin:$PATH"
# export PATH="/opt/homebrew/opt/make/libexec/gnubin:$PATH"
# export FLAGS_GETOPT_CMD="$(brew --prefix gnu-getopt)/bin/getopt"

export NODE_EXTRA_CA_CERTS=/Users/chantxu/.npm.certs.pem

