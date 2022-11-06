#!/bin/bash

if [ ! -f /etc/ssl/certs/nginx.crt ]; then
echo "setting up up ssl ...";
openssl req -x509 -nodes -days 365 -newkey rsa:4096 -keyout /etc/ssl/private/nginx.key -out /etc/ssl/certs/nginx.crt -subj "/C=CH/ST=Zuerich/L=Zuerich/O=wordpress/CN=qbrechbu.42.fr";
echo "ssl is set up!";
fi

exec "$@"