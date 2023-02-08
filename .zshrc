# Themes.
fpath+=$HOME/.zsh/typewritten
ZSH_THEME="typewritten"
#autoload -U promptinit; promptinit
#prompt fade

# Case-sensitive completion.
CASE_SENSITIVE="true"

# Disable bi-weekly auto-update checks.
zstyle ':omz:update' mode disabled

# Disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Disable marking untracked files under VCS as dirty.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# History.
HIST_STAMPS="yyyy-mm-dd"

# Plugins.
plugins=(
    archive
    extract
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
    F-Sy-H
)

# Functions.
source ~/.functions
source ~/.functions_private

# Environment variables.
source ~/.exports

# Oh My Zsh.
source ~/.oh-my-zsh/oh-my-zsh.sh

# User config.
source ~/.zsh/setopt.zsh

# Aliases.
source ~/.aliases
source ~/.aliases_private

# Tracks your most used directories, based on frecency with z.
source ~/.zsh/plugins/z/z.sh

# dircolors.
if [ -x "$(command -v dircolors)" ]; then
    eval "$(dircolors -b ~/.dircolors)"
fi

# fzf key bindings.
if [ -x "$(command -v fzf)" ]; then
    source ~/.fzf/shell/key-bindings.zsh
fi

# Manage SSH with Keychain.
if [ -x "$(command -v keychain)" ]; then
    eval "$(keychain --eval --quiet id_rsa_github id_rsa_gitlab)"
fi

# Load SSH agent. (linux)
if [ -x "$(command -v ssh-agent)" ]; then
    eval "$(ssh-agent -s)" >> /dev/null
    ssh-add ~/.ssh/id_muba 2> /dev/null
    ssh-add ~/.ssh/id_github 2> /dev/null
fi

# Base16 Shell.
if [ -f ~/.local/bin/base16-oxide ]; then
    source ~/.local/bin/base16-oxide
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


fpath=($fpath "/home/urielcuriel/.zfunctions")

autoload bashcompinit
bashcompinit

# Set typewritten ZSH as a prompt
autoload -U promptinit; promptinit
prompt typewritten


