#!/bin/bash
# Script to deploy a very simple web application.
# The web app has a customizable image and some text.

cat << EOM > /var/www/html/index.html
<html>
  <head><title>Hi There!</title></head>
  <body>
  <div style="width:800px;margin: 0 auto">

  <!-- BEGIN -->
  <center><img src="http://${PLACEHOLDER}/${WIDTH}/${HEIGHT}"></img></center>
  <center><h2>Hello Team!</h2></center>
  Welcome to Kelly's app. The name of my secret is: ${APP_SECRET} .
  <!-- END -->

  </div>
  </body>
</html>
EOM

echo "Script complete."
