function hybrid_bindings --description "Vi-style bindings that inherit emacs-style bindings in all modes"
  for mode in default insert visual
    fish_default_key_bindings -M $mode
  end
  fish_vi_key_bindings --no-erase
end
set -g fish_key_bindings hybrid_bindings
set -g -x VISUAL /usr/bin/vim
set -g -x EDITOR 'vim'
set -g -x GOPATH ~/go
set -g -x QT_QPA_PLATFORMTHEME 'qt5ct'
set -g -x ANDROID_HOME /media/Data/Android/Sdk
set -g -x NPM_PACKAGES $HOME/.npm-packages
set -g -x PATH /usr/local/android-studio/bin $ANDROID_HOME/emulator $ANDROID_HOME/tools $ANDROID_HOME/tools/bin $ANDROID_HOME/platform-tools $HOME/go/bin $HOME/.scripts/ $NPM_PACKAGES/bin $PATH
set -e MANPATH
set -g -x MANPATH $NPM_PACKAGES/share/man:(manpath)
set -g -x _JAVA_OPTIONS '-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel -Dswing.crossplatformlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel -Djdk.gtk.version=3 -Dsun.java2d.opengl=true'
