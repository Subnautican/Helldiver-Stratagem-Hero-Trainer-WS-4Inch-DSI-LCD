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

# Check if xterm is installed
if command_exists xterm; then
    echo "xterm is already installed."
else
    # Install xterm
    sudo apt-get update
    sudo apt-get install -y xterm
fi

# Install next@canary with force
sudo npm install next@canary --force

# Install react@beta with force
sudo npm install react@beta --force

# Create the desktop entry file
sudo bash -c 'cat <<EOF > /home/Subnautican/Desktop/start_server.desktop
[Desktop Entry]
Version=1.0
Type=Application
Name=Start Stratagem Hero
Comment=Starts the Stratagem Hero Trainer server + application
Exec=/home/Subnautican/Stratagem-Hero-Trainer-4Inch-LCD/start_server.sh
Icon=/home/Subnautican/Stratagem-Hero-Trainer-4Inch-LCD/icons/desktop-icon.png
Terminal=true
EOF'

# Make the desktop entry executable
sudo chmod +x /home/Subnautican/Desktop/start_server.desktop

echo "Installation and setup complete."
