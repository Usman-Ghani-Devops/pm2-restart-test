#!/bin/bash

set -e

APP_DIR="/home/ubuntu/pm2-restart-test"

echo "===== Deployment started ====="

cd "$APP_DIR"

echo "Fixing permissions..."
sudo chown -R ubuntu:ubuntu "$APP_DIR"

echo "Installing dependencies..."
npm install --omit=dev

echo "Stopping existing application..."
pm2 delete myapp || true

echo "Starting application..."
pm2 start server.js --name myapp

echo "Saving PM2 process list..."
pm2 save

echo "===== Deployment completed ====="
