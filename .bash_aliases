# Load my environment too (in case bashrc does not)
[ -f ~/.bash_env ] && . ~/.bash_env

alias ls="ls -G"
#alias ls="ls -F ${LSARGS}"
alias l='ls -AF'
alias ll='ls -alh'
alias lt='ls -alht'
alias tree='tree -FC'
alias md='mkdir -p'
alias digs='dig +short'
alias testipport='nc -z -w1 -v'
alias h='history'
alias c='clear'
alias yy='yum -y'
alias pst='export TZ=America/Los_Angeles'
alias ssh_nokey='ssh -o PubkeyAuthentication=no'
alias sdr='screen -dR'
alias sdrz='screen -dR -e^Z^Z'
alias sx='screen -x'
alias sxz='screen -x -e^Z^Z'
alias grep='grep --color=auto'

alias k=kubectl
#alias kc='kubectl config get-contexts -o name'
alias kc='kubectl config get-contexts'
alias kc-rename='kubectl config rename-context'
alias kcu='kubectl config use-context'
alias kcn='kubectl config set-context --current --namespace'
alias kg='kubectl get'
alias kn='kubectl get namespaces'
alias kw='kubectl get -o wide'
alias wk='watch kubectl'
alias wkw='watch kubectl -o wide'
alias kd='kubectl describe'

alias d=docker
alias dc='docker container'
alias di='docker image'

alias g=gcloud
alias gc='gcloud compute'
alias gi='gcloud beta compute instances'

alias s=skaffold
alias sd='skaffold dev --port-forward'

# Simple list of ips (linux)
myips () { ifconfig|grep -B1 "inet"|awk '{ if ( $1 == "inet" ) { printf "%s %s\n",substr($2,index($2,":")+1),name } else if ( $2 == "Link" ) { name=$1 } }'|grep -v 127.0.0.1; }
myip () { myips|awk '{print $1}'; }
mypip () { curl icanhazip.com; }
mypip4 () { curl ipv4.icanhazip.com; }
mypip6 () { curl ipv6.icanhazip.com; }
