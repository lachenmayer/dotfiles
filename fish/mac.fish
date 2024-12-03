# Add Homebrew to PATH
eval "$(/opt/homebrew/bin/brew shellenv)"

# Rust
set -g fish_user_paths ~/.cargo/bin $fish_user_paths

# Python
# set -g fish_user_paths ~/Library/Python/3.7/bin $fish_user_paths

# Go
# set -gx GOPATH ~/.go
# set -g fish_user_paths $GOPATH/bin $fish_user_paths

# Android
# set -gx ANDROID_HOME $HOME/Library/Android/sdk
# set -g fish_user_paths $ANDROID_HOME/tools $ANDROID_HOME/tools/bin $ANDROID_HOME/platform-tools $fish_user_paths
# set -gx ANDROID_NDK $ANDROID_HOME/ndk/21.4.7075529

# Ruby
#set ruby_dir ruby@2.5
#set gem_dir 2.5.0
#set -g fish_user_paths "/usr/local/lib/ruby/gems/$gem_dir/bin/" "/usr/local/opt/$ruby_dir/bin" $fish_user_paths
#set -gx LDFLAGS "-L/usr/local/opt/$ruby_dir/lib"
#set -gx CPPFLAGS "-I/usr/local/opt/$ruby_dir/include"
#set -gx PKG_CONFIG_PATH "/usr/local/opt/$ruby_dir/lib/pkgconfig"

# Homebrew Ruby
# set -g fish_user_paths /opt/homebrew/opt/ruby/bin /opt/homebrew/lib/ruby/gems/3.1.0/bin $fish_user_paths
# set -gx LDFLAGS "-L/opt/homebrew/opt/ruby/lib"
# set -gx CPPFLAGS "-I/opt/homebrew/opt/ruby/include"
# set -gx PKG_CONFIG_PATH "/opt/homebrew/opt/ruby/lib/pkgconfig"

# Disable Homebrew upgrade when installing packages
set -gx HOMEBREW_NO_INSTALL_UPGRADE 1
set -gx HOMEBREW_NO_INSTALLED_DEPENDENTS_CHECK 1