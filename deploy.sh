#!/bin/bash
set -e

APP_DIR=/home/ubuntu/flaskapp
VENV_DIR=$APP_DIR/venv

echo "Preparing app directory..."
rm -rf $APP_DIR
mkdir -p $APP_DIR

echo "Copying application files..."
cp app.py requirements.txt $APP_DIR/

cd $APP_DIR

echo "Creating virtual environment..."
python3 -m venv venv

echo "Activating virtual environment..."
source venv/bin/activate

echo "Installing dependencies inside venv..."
pip install --upgrade pip
pip install -r requirements.txt

echo "Restarting application..."
sudo systemctl daemon-reload
sudo systemctl restart flaskapp

echo "Deployment completed successfully"
