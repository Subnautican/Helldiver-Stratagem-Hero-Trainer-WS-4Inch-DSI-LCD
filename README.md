# Stratagem-Hero-Trainer-4Inch-LCD

*DISCLAIMER*

This is a modification on the github repository from nvigneux's Stratagem Hero Trainer: https://github.com/nvigneux/Stratagem-Hero-Trainer
I do not own nor created this software, I only modified it to improve the ease of use with it on a Waveshare 4" DSI LCD combined with a Raspberry Pi 4 Model B.
So full credit for the creation of this software goes to them!

This Github repository was made to use with the hardware mentioned above, for cosplay purposes! the 4" DSI LCD is just the right size to use it as a in real life 'Stratagem Tac-Pad' from the game Helldivers 2!

## Installation Guide

Go into the terminal window of your Raspberry Pi, then type:

git clone https://github.com/Subnautican/Stratagem-Hero-Trainer-4Inch-LCD.git
cd Stratagem-Hero-Trainer-4Inch-LCD/
sudo chmod +x install.sh
sudo ./install.sh

After this everything should be installed correctly. A new desktop icon will appear on your desktop, called 'Start Stratagem Hero'. Click on this icon and wait a few seconds, after a while the website should open and the application should load. (This also works offline, so without internet!) 

When the application is open, click on the gear icon in the right top of the application screen, a side menu bar will open. Scroll all the way down, and click 'Enter fullscreen'. Now the application should have loaded in full screen. To exit, repeat the same steps as before, now it will say 'Exit fullscreen'. 
*It is important to note that entering fullscreen via the standard web browser settings will cause the 'Exit fullscreen' button to not function properly, thus locking you in the application and requiring a hard restart. To avoid this, do not use the web browser's built in full screen button and only use the full screen button located in the application's settings.*

## Trouble Shooting

-If the error with the text something along the lines of 'Failed to execute child process "xterm"' after clicking the desktop icon pops up, it most likely means that you have to re-install x-term. You can do this   by:

  sudo apt-get delete xterm
  sudo apt-get install xterm

  This should resolve the issue.

-If the error with the text something along the lines of 'Unable to find file or directory' pops up, it most likely means that your file paths are not correct. For this repository I used the standard account name one would get when flashing a new OS, which is the account name 'pi'. If this is not the same with your account name, it needs to be changed. You can do this by right clicking the desktop icon, and select 'Text editor'. This will then open a window, with this code:

[Desktop Entry]
Version=1.0
Type=Application
Name=Start Stratagem Hero
Comment=Starts the Stratagem Hero Trainer server
Exec=/home/pi/Stratagem-Hero-Trainer/start_server.sh
Icon=/home/pi/Stratagem-Hero-Trainer/icons/desktop-icon.png
Terminal=true

In here you need to change the 'pi' to the right name of your own account, and save the file. It should have resolved the issue.

