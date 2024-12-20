# Git aliases.
alias ga="git add --all"
alias gc="git commit"
alias gco="git checkout"
alias gd="git diff"
alias gdh="git diff HEAD"
alias glog="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
alias gp="git push"
alias gpu="git pull"
alias gs="git status"
alias gunstage="git reset HEAD"
function gundo
  git reset HEAD $argv
  git checkout -- $argv
end
# Lets you redo the latest commit
alias grewind="git reset --soft HEAD~"
# Add more changes to the latest commit without asking to edit the commit message
alias gamend="gc --amend --reuse-message HEAD"
# Open PR in browser
alias pr="gh pr view --web"
# Lazygit
alias gg="lazygit"

function makemp3
  lame -hb320 "$argv".aif "$argv".mp3
  id3tool "$argv".mp3 -r"Hazlo" -t"$argv"
end

function flac2mp3
  for f in *.flac
    ffmpeg -i $f -b:a 320k $f.mp3
  end
end

function youtube2mp3
  youtube-dl --extract-audio --audio-format mp3 --audio-quality 0 "$argv"
end

function makejs
  if test (count $argv) -ne 1
    echo "usage: makejs <project-name>"
    return
  end
  set -l project $argv
  mkdir $project
  cd $project
  npm init -y
  echo "node_modules/" >> .gitignore
  git init
  git add .
  git commit -m "init"
  touch readme.md
  touch index.js
end

function makets
  if test (count $argv) -ne 1
    echo "usage: makets <project-name>"
    return
  end
  makejs $argv
  yarn add --dev typescript ts-node @types/node
  yarn tsc --init
  mv index.js index.ts
  git add .
  git commit -m "add typescript"
end
