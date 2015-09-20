#!/usr/bin/env sh

echo "Show the ~/Library folder."
chflags nohidden ~/Library

echo "Add host info to login screen"
sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName

echo "Modifying Trackpad preferences"
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

echo "Ask for screensaver password"
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

echo "Enable full keyboard access for all controls (e.g. enable Tab in modal dialogs)."
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

echo "Expand save panel by default."
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

echo "Disable the 'Are you sure you want to open this application?' dialog."
defaults write com.apple.LaunchServices LSQuarantine -bool false

echo "Speed up dock show/hide animation."
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock autohide-time-modifier -float 0.5
killall Dock

echo "Change screenshot location."
mkdir -p ~/Desktop/Screenshots
defaults write com.apple.screencapture location ~/Desktop/Screenshots/
killall SystemUIServer

echo "Set a blazingly fast keyboard repeat rate."
defaults write NSGlobalDomain KeyRepeat -int 0.02

echo "Set a shorter Delay until key repeat."
defaults write NSGlobalDomain InitialKeyRepeat -int 12

echo "Increase window resize speed for Cocoa applications."
defaults write NSGlobalDomain NSWindowResizeTime -float 0.001

echo "Enable snap-to-grid for desktop icons."
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist

echo "Automatically open a new Finder window when a volume is mounted."
defaults write com.apple.frameworks.diskimages auto-open-ro-root -bool true
defaults write com.apple.frameworks.diskimages auto-open-rw-root -bool true

echo "Display full POSIX path as Finder window title."
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

echo "Show Path bar in Finder."
defaults write com.apple.finder ShowPathbar -bool true

echo "Show Status bar in Finder."
defaults write com.apple.finder ShowStatusBar -bool true

echo "Use current directory as default search scope in Finder."
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

echo "Setup Terminal theme incase we ever use it"
defaults write com.apple.terminal "Default Window Settings" -string "Pro"
defaults write com.apple.terminal "Startup Window Settings" -string "Pro"

echo "Tame Time Machine alerts"
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true

echo "Changed defaults. Restarting apps…"

echo "Restart Finder."
killall Finder

echo "All done."
