#!/bin/bash

# Get instance ID (used for unique hostname)
INSTANCE_ID=$(curl -s http://169.254.169.254/latest/meta-data/instance-id)

# Set hostname
hostnamectl set-hostname web-$INSTANCE_ID

# Install Apache
yum update -y
yum install httpd -y

# Start Apache
systemctl start httpd
systemctl enable httpd

# Create web page showing hostname
echo "<h1>Welcome to Auto Scaling Group 🚀</h1>" > /var/www/html/index.html
echo "<h2>Hostname: $(hostname)</h2>" >> /var/www/html/index.html
