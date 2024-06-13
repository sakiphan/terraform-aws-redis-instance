#!/bin/bash
sudo dnf install -y redis6
sudo systemctl start redis6
sudo systemctl enable redis6
sudo systemctl is-enabled redis6
echo "Welcome to ${server_name}" > /etc/motd