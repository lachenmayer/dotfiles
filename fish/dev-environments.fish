# Rust
set -gx PATH $PATH ~/.cargo/bin

# Python
set -gx PATH $PATH ~/Library/Python/3.7/bin

# Go
set -gx GOPATH ~/.go
set -gx PATH $PATH $GOPATH/bin

# Android
set -gx ANDROID_HOME $HOME/Library/Android/sdk
set -gx PATH $PATH $ANDROID_HOME/tools $ANDROID_HOME/tools/bin $ANDROID_HOME/platform-tools