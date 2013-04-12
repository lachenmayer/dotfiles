source "`brew --prefix grc`/etc/grc.bashrc"
source "`brew --prefix git`/etc/bash_completion.d/git-completion.bash"
source "`brew --prefix git`/etc/bash_completion.d/git-prompt.sh"

# directories are displayed in cyan instead of dark blue
export LS_COLORS='di=01;36'

export INPUTRC=~/.dotfiles/inputrc

export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/share/python:/usr/local/share/npm/bin:/usr/local/Cellar/ruby/1.9.3-p194/bin:$PATH

alias ls='gls -lAh --color'
alias servehttp='python -m SimpleHTTPServer'
alias notes='mvim ~/Dropbox/txt/notes.txt'
alias projects='mvim ~/Dropbox/txt/projects.org'
alias gs='git status'
alias gd='git diff'
alias gp='git push'
alias gpu='git pull'
alias gc='git commit'
alias gco='git checkout'
alias ga='git add'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"

function ..() { cd ../$1; }
function ...() { cd ../../$1; }
function ....() { cd ../../../$1; }

impclone() {
  git clone ssh://hl2711@labranch.doc.ic.ac.uk:10022/lab/hl2711/$1
}

imperial() {
  ## always connect to the same shell for byobu
  #ssh $1 hl2711@shell`jot -rn 1 1 4`.doc.ic.ac.uk
  ssh $1 hl2711@shell2.doc.ic.ac.uk
}

makemp3() {
  lame -hb320 "$@".aif "$@".mp3
  id3tool "$@".mp3 -r"Harry Lachenmayer" -t"$@"
}

makedir() {
  mkdir -p "$1" && cd "$1";
}

bootstrap() {
  wget http://twitter.github.com/bootstrap/assets/bootstrap.zip
  unzip bootstrap.zip
  cp -R bootstrap/* .
  rm -rf bootstrap.zip bootstrap/
}

mvim() {
  for file; do
    if [ ! -e $file ]; then
      touch $file
    fi
    open -a MacVim $file
  done
}

psgrep() {
  ps aux | grep -v grep | grep "$@" -i --color=auto;
}

PS1='$(__git_ps1 "%s ")${TITLEBAR}\[\033[0m\]\[\033[0;37m\]❯ \t \[\033[0m\]\[\033[1;37m\]\w \[\033[0m\]\[\033[0;37m\]❯
\[\033[0m\]\[\033[1;31m\]↪  \[\033[0m\]\[\033[0;0m\]'

