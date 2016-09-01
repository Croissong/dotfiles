alias gpg='/cygdrive/c/Program\ Files\ \(x86\)/GNU/GnuPG/gpg2.exe'

mkcd () {
    case "$1" in
        */..|*/../) cd -- "$1";; # that doesn't make any sense unless the directory already exists
        /*/../*) (cd "${1%/../*}/.." && mkdir -p "./${1##*/../}") && cd -- "$1";;
        /*) mkdir -p "$1" && cd "$1";;
        */../*) (cd "./${1%/../*}/.." && mkdir -p "./${1##*/../}") && cd "./$1";;
        ../*) (cd .. && mkdir -p "${1#.}") && cd "$1";;
        *) mkdir -p "./$1" && cd "./$1";;
    esac
}

alias mkdir="mkcd"
alias ls='ls -Ash --color=auto'
alias grep='grep --color'
# "sudo !!"  seems better
alias please='sudo $( history -p !! )' 
alias df="df -h -P --total --exclude-type=devtmpfs 2>/dev/null"
alias listps='ps aux | grep -v "ps aux" | grep -Ev "\[.+\]" | grep -v grep'
alias usg='du -h --max-depth=1 -x'
alias sysl="tail /var/log/syslog"
alias survey="history |awk '{a[\$2]++} END{for(i in a){printf \"%5d\t%s \n\",a[i],i}}'|sort -rn|head"
