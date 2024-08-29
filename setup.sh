#!/bin/bash

# Update package lists and upgrade existing packages
sudo apt update && sudo apt upgrade -y

# Install Node.js from NodeSource
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt-get install -y nodejs

# Install MongoDB
wget -qO - https://www.mongodb.org/static/pgp/server-6.0.asc | sudo apt-key add -
echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/6.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-6.0.list
sudo apt update
sudo apt install -y mongodb-org
sudo systemctl start mongod
sudo systemctl enable mongod

# Install PM2 globally
sudo npm install -g pm2

# Clone the GitHub repository
git clone https://github.com/phsinghka/mern-stack-deployment.git
cd mern-stack-deployment

# Install server dependencies
npm install

# Change to client directory, install dependencies and build the React app
cd client
npm install
npm run build

# Move back to the root directory and start the server with PM2
cd ..
pm2 start server.js

# Save PM2 process list and enable PM2 startup on boot
pm2 save
pm2 startup

echo "MERN stack deployment completed. Application is running and managed by PM2."

