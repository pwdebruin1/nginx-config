#!/bin/bash

# Create Index Page
curl -sSL https://raw.githubusercontent.com/pwdebruin1/nginx-config/master/html/index.html > /var/www/html/index.html

# Set default site config which includes rewrite to HTTPS behind ALB
curl -sSL https://raw.githubusercontent.com/pwdebruin1/nginx-config/master/config/private > /etc/nginx/sites-available/private
cp /etc/nginx/sites-available/private /etc/nginx/sites-available/private
systemctl reload nginx
