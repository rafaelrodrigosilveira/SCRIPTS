#!/bin/bash

# BACKUP DO DATABASE
mysqldump -u root -p ti_olsen > /var/www/site/$(date +%d_%m_%Y)_site_database.sql

# BACKUP DO SITE
cd /var/www/
zip -r $(date +%d_%m_%Y)_site.zip /var/www/site
mv $(date +%d_%m_%Y)_site.zip /home/rafael/backups/
