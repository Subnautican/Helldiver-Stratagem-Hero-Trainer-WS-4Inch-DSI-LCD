#!/bin/bash

# Function to check if a command exists
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Check if npm is installed
if command_exists npm; then
    echo "npm is already installed."
else
    # Install npm
    sudo apt-get update
    sudo apt-get install -y npm
fi

# Install next@canary with force
npm install next@canary --force

# Install react@beta with force
npm install react@beta --force

# Create the desktop entry file
cat <<EOF > /home/pi/Stratagem-Hero-Trainer-4Inch-LCD-main/start_server.desktop
[Desktop Entry]
Version=1.0
Type=Application
Name=Start Stratagem Hero
Comment=Starts the Stratagem Hero Trainer server + application
Exec=/home/pi/Stratagem-Hero-Trainer-4Inch-LCD-main/start_server.sh
Icon=/home/pi/Stratagem-Hero-Trainer-4Inch-LCD-main/icons/desktop-icon.png
Terminal=true
EOF

# Make the desktop entry executable
chmod +x /home/pi/Stratagem-Hero-Trainer-4Inch-LCD-main/start_server.desktop

echo "Installation and setup complete."
