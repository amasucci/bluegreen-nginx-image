#!/bin/sh
set -eu

echo "<!DOCTYPE html>
<html>
  <head>
    <title>$COLOR</title>
  </head>
  <body style=\"background-color:$COLOR;\">
    <h1>Welcome to $COLOR</h1>
  </body>
</html>" >  /usr/share/nginx/html/index.html

exec /usr/sbin/nginx -g "daemon off;"