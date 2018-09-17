#!/bin/sh

cp /var/www/index.html_back /var/www/index.html
sed -i 's/$${{MESSAGE}}/'"$MESSAGE"'/g' /var/www/index.html

# Create a basic webserver and sleep forever
httpd -p 80 -h /var/www;
tail -f /dev/null
