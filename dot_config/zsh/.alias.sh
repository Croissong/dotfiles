alias ls='exa -ga --group-directories-first'
alias ll='ls -l'

alias cat=bat
alias less=bat
alias q=pueue
function tail() { /usr/bin/tail -f "$@" | bat --paging=never -l log }

alias rmr='rm -r'

alias find='fd -H'
alias top=btm
alias open='handlr open'
alias history='history -E'
alias tree=br
alias x=xplr
alias ps=procs
alias sed=sd
alias ntop='sudo nethogs'
alias rename=vidir
alias diff=delta
alias m=neomutt
alias mr='neomutt -R'
alias ms='mailsync'

alias chezmoi='chezmoi -vr'

alias ec=echo

alias printer='system-config-printer'

alias df='df -h -P --total --exclude-type=devtmpfs 2>/dev/null'
alias clip='wl-copy -n'
alias du='dust -b'
alias journalctl='journalctl -fxe'
# todo https://github.com/junegunn/fzf/issues/2028
alias pass=gopass
alias p="gopass ls --flat | fzf  --bind 'enter:execute-silent(gopass -c {})+abort,alt-enter:execute-silent(gopass otp -c {}),space:execute(gopass show {})+abort,alt-#:execute-silent(choose -f / -1 <<< {} | wl-copy -n)'"
alias ssh='TERM=xterm ssh'

alias pack='arc archive'
alias unpack='arc unarchive'

alias paruch='sudo pacman --config ~/.config/pacman/chaotic-aur.conf -Syu'

alias t=tab

alias lock='physlock -ds'

man() {emacsclient -que "(progn (man \"$1\") (select-frame-set-input-focus (selected-frame)))"}

alias kc=kubectl
alias kcd='kubectl config set-context $(kubectl config current-context) --namespace'
alias kctx='kubectl config use-context'
alias kctxrm='kubectl config delete-context'
alias kctxmv='kubectl config rename-context'
alias kcg='kubectl neat get -o yaml'
alias kcdsc='kubectl describe'
alias kcroll='kubectl rollout restart'
alias kcl='kubectl logs --all-containers --timestamps -f --tail 1000'
alias kcx='kubectl exec -ti'
alias kcfwd='kubectl port-forward'
alias kcw='kubectl get po -w -owide'
alias kcgs='kubectl get -owide --sort-by=.metadata.creationTimestamp'
alias kcrollall="kc get deploy --no-headers -ocustom-columns='name:{.metadata.name}' | xargs -I{} kubectl rollout restart deploy {}"

alias tw='task'
alias twa='task add'
alias twl='task list'
alias twd='task done'
alias twm='task modify'

alias docker=podman
alias summon='summon -f summon.yml'
alias vpnio='sudo swanctl -i -c vpn'

alias pets='pet search | clip'

alias vol=pamixer
alias volg='pamixer --get-volume-human'

alias mvnpkg='mvn package -DskipTests'
alias mvndep='mvn dependency:resolve -Dclassifier=sources'

alias lightkbd='light -s sysfs/leds/tpacpi::kbd_backlight'

alias curlwbench='curl -H "PRIVATE-TOKEN: `pass show svh/gitlab-token`" --cert $HOME/.config/svh/ssl_smarthub-wbench/user.crt --key $HOME/.config/svh/ssl_smarthub-wbench/userkey.pem'

alias cal='khal'
alias call='khal list'
alias cala='khal calendar'
alias cali='ikhal'

alias aconfmgr='aconfmgr --skip-checksums --aur-helper paru'
alias parus="paru -Slq | fzf --multi --preview 'paru -Si {1}' | clip"

alias pacdiff='sudo -E pacdiff'

awkp() { awk "{print \$${1:-1}}"; }

b64e() { echo -n $1 | base64 -w0 }
b64d() { echo -n $1 | base64 -d }

alias promotor='~/.cache/pypoetry/virtualenvs/promotor-M1X4eowa-py3.9/bin/promotor'

e() {
    if [ -z "$1" ]; then
        TMP="$(mktemp /tmp/stdin-XXX)"
        cat >$TMP
        emacsclient $TMP
        rm $TMP
    else
        emacsclient "$@"
    fi
}

function pgrep() { /usr/bin/pgrep "$@" | xargs --no-run-if-empty ps fp; }
