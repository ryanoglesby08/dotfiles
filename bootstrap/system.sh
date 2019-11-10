#!/usr/bin/env zsh

echo "Updating Mac OS..."
sudo softwareupdate -i -a

echo "Checking for Xcode..."
if xcodebuild -version >/dev/null 2>&1;
then
  echo "Found!"
else
  echo "Not found. Install Xcode using the App Store first."
  exit 1
fi

echo "Configuring Mac OS settings..."

###############################################################################
# General UI/UX                                                               #
###############################################################################

# Disable the sound effects on boot
sudo nvram SystemAudioVolume=" "

# Restart automatically if the computer freezes
sudo systemsetup -setrestartfreeze on

# Sleep after 10 minutes
sudo systemsetup -setcomputersleep 10 > /dev/null

# Disable “natural” (Lion-style) scrolling
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

# Set a blazingly fast keyboard repeat rate
defaults write NSGlobalDomain KeyRepeat -int 2
defaults write NSGlobalDomain InitialKeyRepeat -int 15

# Treat function keys as actual function keys
defaults write NSGlobalDomain com.apple.keyboard fnState -bool true

###############################################################################
# Finder                                                                      #
###############################################################################

# Finder: allow quitting via ⌘ + Q; doing so will also hide desktop icons
defaults write com.apple.finder QuitMenuItem -bool true

###############################################################################
# Screen                                                                      #
###############################################################################

# Require password immediately after sleep or screen saver begins
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# Save screenshots to the Downloads folder
defaults write com.apple.screencapture location -string "${HOME}/Downloads"

###############################################################################
# Dock, Dashboard, and hot corners                                            #
###############################################################################

# Set the icon size of Dock items
defaults write com.apple.dock tilesize -int 48

# Set minimize/maximize window effect
defaults write com.apple.dock mineffect -string "genie"

# Show indicator lights for open applications in the Dock
defaults write com.apple.dock show-process-indicators -bool true

# Don’t show Dashboard as a Space
defaults write com.apple.dock dashboard-in-overlay -bool true

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Magnify icons on hover
defaults write com.apple.dock magnification -bool true

# Hot corners
# Possible values:
#  0: no-op
#  2: Mission Control
#  3: Show application windows
#  4: Desktop
#  5: Start screen saver
#  6: Disable screen saver
#  7: Dashboard
# 10: Put display to sleep
# 11: Launchpad
# 12: Notification Center
# Top left → no op
defaults write com.apple.dock wvous-tl-corner -int 0
defaults write com.apple.dock wvous-tl-modifier -int 0
# Top right → Screen saver
defaults write com.apple.dock wvous-tr-corner -int 5
defaults write com.apple.dock wvous-tr-modifier -int 0
# Bottom right → no op
defaults write com.apple.dock wvous-br-corner -int 0
defaults write com.apple.dock wvous-br-modifier -int 0
# Bottom left → Dashboard
defaults write com.apple.dock wvous-bl-corner -int 7
defaults write com.apple.dock wvous-bl-modifier -int 0

###############################################################################
# Mac App Store                                                               #
###############################################################################

# Enable the automatic update check
defaults write com.apple.SoftwareUpdate AutomaticCheckEnabled -bool true

# Check for software updates daily, not just once per week
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1

# Download newly available updates in background
defaults write com.apple.SoftwareUpdate AutomaticDownload -int 1

# Install System data files & security updates
defaults write com.apple.SoftwareUpdate CriticalUpdateInstall -int 1

# Turn on app auto-update
defaults write com.apple.commerce AutoUpdate -bool true

###############################################################################
# Photos                                                                      #
###############################################################################

# Prevent Photos from opening automatically when devices are plugged in
defaults write com.apple.ImageCapture disableHotPlug -bool true


echo "Done updating Mac OS. Note that some of these changes require a logout/restart to take effect."
