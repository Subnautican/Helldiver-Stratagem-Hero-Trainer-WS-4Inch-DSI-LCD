#!/bin/bash

# Change directory to Stratagem-Hero-Trainer-4Inch-LCD
cd /home/Subnautican/Stratagem-Hero-Trainer-4Inch-LCD/

# Run the development server
npm run dev &

# Wait for the server to start
sleep 10

# Open the web application in the default browser
xdg-open http://localhost:3000

