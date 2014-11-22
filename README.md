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

disable the Character Accent Menu.

```
$ defaults write -g ApplePressAndHoldEnabled -bool false
```

