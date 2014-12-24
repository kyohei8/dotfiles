# Setup New Mac

Macを買ったら最初にすること

* setting to System Preferences
 * setup trackPad
 * change language(ja->en)

* generate ssh-key(and add key to Github)


* install packages

```
$ cd ~
$ git clone [this rep]
$ sh dotfiles/install.sh
```

* Manual install
 * magical  
 http://www.charcoaldesign.co.uk/magical
 * adium  
 http://sourceforge.net/projects/adium/files/latest/download
 * Hosts
 https://github.com/specialunderwear/Hosts.prefpane/downloads

 * [Today Scripts](https://github.com/SamRothCA/Today-Scripts/releases)
 * [z](https://github.com/rupa/z)

* for AppStore
 * flycut
 * FreeMan
 * CodeRunner
 * SourceTree  

* link atom files  
```bash
$ rm -rf ~/.atom && ln -s ~/Dropbox/private/atom ~/.atom
```

### for Yosemite

#### disable the Character Accent Menu.

```
$ defaults write -g ApplePressAndHoldEnabled -bool false
```

#### '\' key generate '\' (not '¥')

System Preferences > Keybord > inputSource

![bsimg](https://dl.dropboxusercontent.com/u/25442177/backslash.png)


# Turn off animations

```bash
# Turn off Quick Look pop-out animations
$ defaults write com.apple.finder QLPanelAnimationDuration -int 0
$ killall Finder

# Turn off Mission Control animations
$ defaults write com.apple.dock expose-animation-duration -float 0
# Turn off Launchpad animations
$ defaults write com.apple.dock springboard-show-duration -float 0
$ defaults write com.apple.dock springboard-hide-duration -float 0
$ defaults write com.apple.dock springboard-page-duration -float 0
# Turn off Dock hiding animations
$ defaults write com.apple.dock autohide-delay -float 0
$ defaults write com.apple.dock autohide-time-modifier -int 0
# then
$ killall Dock

# opening and closing windows and popovers
$ defaults write -g NSAutomaticWindowAnimationsEnabled -bool false
# disable smooth scrolling
$ defaults write -g NSScrollAnimationEnabled -bool false
# Turn off resize animations
$ defaults write -g NSWindowResizeTime -float 0.001
$ defaults write -g NSDocumentRevisionsWindowTransformAnimation -bool false
# Turn off full screen animations
$ defaults write -g NSToolbarFullScreenAnimationDuration -float 0
#(then reboot your mac)

```


