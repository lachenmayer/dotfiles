source ~/.dotfiles/fish/aliases.fish
source ~/.dotfiles/fish/theme.fish

switch (uname)
  case Darwin
    source ~/.dotfiles/fish/mac.fish
  case Linux
    source ~/.dotfiles/fish/linux.fish
end

if test -e ~/.dotfiles/fish/local.fish
  source ~/.dotfiles/fish/local.fish
end

set -gx EDITOR "zed --wait"

# Set a UTF-8 locale. Apparently required for Fastlane, but probably useful anyway.
set -gx LC_ALL en_US.UTF-8
set -gx LANG en_US.UTF-8
