# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish
set fish_custom $HOME/.dotfiles/fish

set fish_theme lachenmayer
set fish_plugins vi-mode node sublime z localhost

set fish_greeting ""

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish

# Load aliases.
. $fish_custom/aliases.fish

# Required for Go
setenv GOPATH ~/.go

# /usr/local/bin will be in the path twice, but that's probably better than messing around with /etc/paths.
setenv PATH /usr/texbin ~/.cabal/bin /usr/local/bin $GOPATH/bin $PATH

# Needed for cabal... Why isn't this set?
setenv LIBRARY_PATH /usr/local/lib
