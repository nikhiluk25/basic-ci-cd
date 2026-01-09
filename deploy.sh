#!/bin/bash
set -e

APP_DIR=/home/ubuntu/flaskapp

echo "Creating app directory..."
rm -rf $APP_DIR
mkdir -p $APP_DIR

echo "Copying application files..."
cp app.py requirements.txt $APP_DIR/

cd $APP_DIR

echo "Installing dependencies..."
pip3 install -r requirements.txt

echo "Restarting application..."
sudo systemctl daemon-reload
sudo systemctl restart flaskapp

echo "Deployment completed successfully"
