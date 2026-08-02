# mac_startup_programs_script.sh

# Debug notification
osascript -e 'display notification "Running..." with title "mac_startup_programs_script.sh"'
sleep 0.1s
printf "\a"
sleep 1s # it doesn't show unless i wait 1s here

# Setup

# Only do this part if the file does not already exist
if ! [ -f ~/Library/LaunchAgents/mac_startup_programs_script.plist ]; then

echo "File does not exist, as such, we create it now."

cat <<EOT >> ~/Library/LaunchAgents/mac_startup_programs_script.plist
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>Label</key>
    <string>mac_startup_programs_script</string>
    <key>ProgramArguments</key>
    <array>
        <string>/bin/bash</string>
        <string>/Users/$(whoami)/mac_startup_programs_script/mac_startup_programs_script.sh</string>
    </array>
    <key>RunAtLoad</key>
    <true/>
</dict>
</plist>
EOT

launchctl load ~/Library/LaunchAgents/mac_startup_programs_script.plist

fi

# Here is the part that actually runs the software I wish to autostart on startup

open "/Applications/Minecraft.app"


