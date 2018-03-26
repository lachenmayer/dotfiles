source $OMF_CONFIG/aliases.fish

# Required for Go
set -gx GOPATH ~/.go

setenv HOMEBREW_GITHUB_API_TOKEN e38c8f6ebbb3c845a7114ac4f8808dbbb96757fb

# Android crap
#set -gx ANDROID_HOME $HOME/Library/Android/sdk
#set -gx PATH $PATH $ANDROID_HOME/tools $ANDROID_HOME/platform-tools

set -gx PATH ~/.cargo/bin $PATH
