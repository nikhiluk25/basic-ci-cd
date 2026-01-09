#!/bin/bash
set -e

rm -rf ~/app
mkdir ~/app
cp -r * ~/app/

sudo systemctl daemon-reload
sudo systemctl restart flaskapp
