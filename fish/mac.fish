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

# Use Homebrew's Ruby - it refuses to install it because it's already provided.
set -g fish_user_paths "/usr/local/opt/ruby/bin" $fish_user_paths
set -gx LDFLAGS "-L/usr/local/opt/ruby/lib"
set -gx CPPFLAGS "-I/usr/local/opt/ruby/include"
set -gx PKG_CONFIG_PATH "/usr/local/opt/ruby/lib/pkgconfig"

# Use JDK 11
set -g fish_user_paths "/usr/local/opt/openjdk@11/bin" $fish_user_paths
set -gx CPPFLAGS "-I/usr/local/opt/openjdk@11/include"