source ~/.dotfiles/fish/aliases.fish
source ~/.dotfiles/fish/theme.fish

switch (uname)
  case Darwin
    source ~/.dotfiles/fish/mac.fish
  case Linux
    source ~/.dotfiles/fish/linux.fish
end

set -gx EDITOR "code -"
setenv HOMEBREW_GITHUB_API_TOKEN e38c8f6ebbb3c845a7114ac4f8808dbbb96757fb
set -gx LEDGER_FILE ~/Documents/finances/hledger.journal

# Set a UTF-8 locale. Apparently required for Fastlane, but probably useful anyway.
set -gx LC_ALL en_US.UTF-8
set -gx LANG en_US.UTF-8
