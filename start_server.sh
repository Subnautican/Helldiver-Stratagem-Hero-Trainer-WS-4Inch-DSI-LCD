#!/bin/bash

# Change directory to Stratagem-Hero-Trainer-master
cd /home/pi/Stratagem-Hero-Trainer-4Inch-LCD-main/

# Run the development server
npm run dev &

# Wait for the server to start (adjust the sleep time as necessary)
sleep 10

# Open the web application in the default browser
xdg-open http://localhost:3000

