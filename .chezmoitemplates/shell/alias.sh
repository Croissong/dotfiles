alias ls='exa -gha --group-directories-first'
alias find='fd -H'
alias feh='feh --conversion-timeout 1 -g 640x480 -d -S filename'
alias top=glances
alias open=mimeo

alias df='df -h -P --total --exclude-type=devtmpfs 2>/dev/null'
alias clip='wl-copy'
alias du='du -hd1'
alias journalctl='journalctl -fxe'
alias curl='curl -s'
alias pass=gopass
alias ssh='TERM=xterm ssh'

alias lock='physlock -ds'

alias rg='rg --color always --no-heading --smart-case --hidden --ignore-file $HOME/.config/ripgrep/ignore'

alias ediff='scripts emacsc_ediff'
alias ediff3='scripts emacsc_ediff3'
alias e=emacsclient

alias kc=kubectl
alias kcd='kubectl config set-context $(kubectl config current-context) --namespace'
alias kctx='kubectl config use-context'
alias kcg='kubectl get -o yaml'
alias kcdsc='kubectl describe'
alias kcroll='kubectl patch deployment -p \
  "{\"spec\":{\"template\":{\"metadata\":{\"labels\":{\"date\":\"`date +'%s'`\"}}}}}"'
alias kcl='kubectl logs -f --tail 100'
alias kcx='kubectl exec -ti'
alias kcfwd='kubectl port-forward'
alias kcw='kubectl get po -w -owide --sort-by=.metadata.creationTimestamp'

alias tw='task'
alias twa='task add'
alias twl='task list'
alias twd='task done'
alias twm='task modify'

alias docker=podman

alias summon=cyberark-summon

alias unpack=aunpack

awkp() { awk "{print \$${1:-1}}"; }
