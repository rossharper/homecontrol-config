#!/bin/bash

sudo apt-get install certbot

mkdir -p ~/homecontrol/letsencrypt/work
mkdir -p ~/homecontrol/letsencrypt/config

certbot certonly --webroot --logs-dir ~/homecontrol/logs --work-dir ~/homecontrol/letsencrypt/work --config-dir ~/homecontrol/letsencrypt/config -w ~/homecontrol/raspberrysauce/webapp/public -d pi.rharper.co.uk

# Can be used to test
# certbot renew --dry-run --logs-dir ~/homecontrol/logs --work-dir ~/homecontrol/letsencrypt/work --config-dir ~/homecontrol/letsencrypt/config
# Cron is automatically setup, but it runs as root, will this create a problem?
