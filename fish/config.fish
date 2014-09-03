# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish
set fish_custom $HOME/.dotfiles/fish

set fish_theme lachenmayer
set fish_plugins vi-mode node

set fish_greeting ""

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish

# Load aliases.
. $fish_custom/aliases.fish

# Set PATH
set PATH ~/.cabal/bin $PATH