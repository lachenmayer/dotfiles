# Git aliases.
alias ga="git add --all"
alias gs="git status"
alias gd="git diff"
alias gp="git push"
alias gpu="git pull"
alias gc="git commit"
alias gco="git checkout"
alias glog="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"

function makemp3
  lame -hb320 "$argv".aif "$argv".mp3
  id3tool "$argv".mp3 -r"Harry Lachenmayer" -t"$argv"
end

alias brlogs='vagrant ssh web -c "sudo tail -f /var/log/upstart/php5-fpm.log"'
