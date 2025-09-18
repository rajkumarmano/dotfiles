# system
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"

# Python
alias python=python3

# ---- Eza (better ls) -----
alias ls="eza --icons=always"

# ---- Eza -----
# ---- improved cd -----
alias cd="z"

# ---- Kubectl -----
alias k="kubectl"

# short alias to set/show context/namespace (only works for bash and bash-compatible shells, current context to be set before using kn to set namespace)$
alias kx='f() { [ "$1" ] && kubectl config use-context $1 || kubectl config current-context ; } ; f'
alias kn='f() { [ "$1" ] && kubectl config set-context --current --namespace $1 || kubectl config view --minify | grep namespace | cut -d" " -f6 ; } ; f'

alias vim="nvim"

# Replace cat to bat
alias cat='bat --paging never --theme DarkNeon \
    --style plain'
alias fzfp='fzf --preview "bat --style numbers     --color always {}"'
