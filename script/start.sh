#!/bin/bash

echo "Starting new app.py..."

cd /home/ec2-user/my-python-app/ || exit

pip install -r requirements.txt -t .

sleep 5s

nohup python3 python.py > logs.txt 2>&1 &
