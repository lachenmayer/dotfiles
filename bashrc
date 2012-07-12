source "`brew --prefix grc`/etc/grc.bashrc"
source "`brew --prefix git`/etc/bash_completion.d/git-completion.bash"

# directories are displayed in cyan instead of dark blue
export LS_COLORS='di=01;36'

alias ls='gls -lAh --color'
alias servehttp='python -m SimpleHTTPServer'
alias gs='git status'
alias gc='git commit'
alias gco='git checkout'
alias ga='git add'

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

# replacement for stock command line shortcut, which is:
# /Applications/MacVim.app/Contents/MacOS/Vim -g $*;
# opens files according to MacVim's settings, not just in
# a new window/vim process
mvim() {
  for file in $* 
  do
    open "mvim://open?url=file://`greadlink -f $file`"
  done
}

makemp3() {
	lame -hb320 $1.aif $1.mp3
	id3tool $1.mp3 -r"Harry Lachenmayer" -t"$1"
}

PS1='$(__git_ps1 "[%s]-")${TITLEBAR}\[\033[0m\]\[\033[0;37m\][ \u \h \[\033[0m\]\[\033[1;37m\]\w \[\033[0m\]\[\033[0;37m\]]
\[\033[0m\]\[\033[1;31m\]> \[\033[0m\]\[\033[0;0m\]'
