source "`brew --prefix grc`/etc/grc.bashrc"
source "`brew --prefix git`/etc/bash_completion.d/git-completion.bash"
source "`brew --prefix git`/etc/bash_completion.d/git-prompt.sh"

# directories are displayed in cyan instead of dark blue
export LS_COLORS='di=01;36'

export INPUTRC=~/.dotfiles/inputrc

alias ls='gls -lAh --color'
alias servehttp='python -m SimpleHTTPServer'
alias gs='git status'
alias gp='git push'
alias gc='git commit'
alias gco='git checkout'
alias ga='git add'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"

impclone() {
    git clone hl2711@gituser.doc.ic.ac.uk:/vol/lab/firstyear/Repositories/2011-2012/161/hl2711/$1
}

imperialfs() {
    diskutil unmount ~/imperialfs
    shell="shell`jot -rn 1 1 4`.doc.ic.ac.uk:"
    echo $shell
    sshfs -o hl2711@$shell: ~/imperialfs
}

imperial() {
    ssh $1 hl2711@shell`jot -rn 1 1 4`.doc.ic.ac.uk
}

mvim() {
	~/Applications/MacVim.app/Contents/MacOS/Vim -g $*;
}

makemp3() {
	lame -hb320 "$@".aif "$@".mp3
	id3tool "$@".mp3 -r"Harry Lachenmayer" -t"$@"
}

PS1='$(__git_ps1 "%s ")${TITLEBAR}\[\033[0m\]\[\033[0;37m\]❯ \t \[\033[0m\]\[\033[1;37m\]\w \[\033[0m\]\[\033[0;37m\]❯
\[\033[0m\]\[\033[1;31m\]↪ \[\033[0m\]\[\033[0;0m\]'

