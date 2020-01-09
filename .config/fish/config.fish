function hybrid_bindings --description "Vi-style bindings that inherit emacs-style bindings in all modes"
  for mode in default insert visual
    fish_default_key_bindings -M $mode
  end
  fish_vi_key_bindings --no-erase
end

# Proxy settings
# set -g http_proxy 'http://192.168.200.5:808/'
# set -g ftp_proxy 'ftp://192.168.200.5:2121/'
# set -g rsync_proxy 'rsync://192.168.200.5:808/'
# set -g no_proxy 'localhost,192.168.200.*,127.0.0.1'
# set -g HTTP_PROXY 'http://192.168.200.5:808/'
# set -g FTP_PROXY 'ftp://192.168.200.5:2121/'
# set -g RSYNC_PROXY 'rsync://192.168.200.5:808/'
# set -g NO_PROXY 'localhost,192.168.200.*,127.0.0.1'
# set -g https_proxy 'http://192.168.200.5:808/'
# set -g HTTPS_PROXY 'http://192.168.200.5:808/'


set -g fish_key_bindings hybrid_bindings
set -g -x VISUAL /usr/bin/vim
set -g -x EDITOR 'vim'
set -g -x GOPATH ~/Project/go
set -g -x QT_QPA_PLATFORMTHEME 'qt5ct'
set -g -x ANDROID_HOME /media/Data/Android/Sdk
set -g -x ANDROID_SDK_ROOT /media/Data/Android/Sdk
set -g -x NPM_PACKAGES $HOME/.npm-packages
set -g -x DOTNET_ROOT /usr/share/dotnet
set -g -x PATH /usr/local/android-studio/bin $ANDROID_HOME/emulator $ANDROID_HOME/tools $ANDROID_HOME/tools/bin $ANDROID_HOME/platform-tools $HOME/go/bin $HOME/.scripts/ $NPM_PACKAGES/bin $HOME/.dotnet/tools $HOME/.config/composer/vendor/bin $PATH
set -e MANPATH
set -g -x MANPATH $NPM_PACKAGES/share/man:(manpath)
set -g -x _SILENT_JAVA_OPTIONS '-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel -Dswing.crossplatformlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel -Djdk.gtk.version=3 -Dsun.java2d.opengl=true'

alias java="java $_SILENT_JAVA_OPTIONS"
