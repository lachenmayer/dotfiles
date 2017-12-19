export INPUTRC=~/.dotfiles/inputrc

export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/share/python:/usr/local/share/npm/bin:/usr/local/Cellar/ruby/1.9.3-p194/bin:$PATH

alias servehttp='python -m SimpleHTTPServer'
alias gs='git status'
alias gd='git diff'
alias gdh='git diff HEAD'
alias gp='git push'
alias gpu='git pull'
alias gc='git commit'
alias gco='git checkout'
alias ga='git add --all'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
alias gunstage='git reset HEAD'

function ..() { cd ../$1; }
function ...() { cd ../../$1; }
function ....() { cd ../../../$1; }

PS1='$(__git_ps1 "%s ")${TITLEBAR}\[\033[0m\]\[\033[0;37m\]❯ \t \[\033[0m\]\[\033[1;37m\]\w \[\033[0m\]\[\033[0;37m\]❯
\[\033[0m\]\[\033[1;31m\]↪  \[\033[0m\]\[\033[0;0m\]'

