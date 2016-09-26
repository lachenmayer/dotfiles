source $OMF_CONFIG/aliases.fish

# Required for Go
#setenv GOPATH ~/.go

# /usr/local/bin will be in the path twice, but that's probably better than messing around with /etc/paths.
setenv PATH /usr/local/bin /usr/local/sbin $PATH

# Android shiz
setenv ANDROID_HOME /usr/local/opt/android-sdk
setenv PATH $ANDROID_HOME/tools $ANDROID_HOME/platform-tools $PATH

setenv HOMEBREW_GITHUB_API_TOKEN e38c8f6ebbb3c845a7114ac4f8808dbbb96757fb
