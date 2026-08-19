#!/bin/bash

set -e

cd /home/ubuntu/pm2-restart-test

echo "Installing dependencies..."
npm install --production

echo "Starting application with PM2..."

pm2 delete myapp || true

pm2 start server.js --name myapp

pm2 save

echo "Deployment completed."
