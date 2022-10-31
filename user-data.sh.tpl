#!/bin/bash

sudo apt update -y
sudo apt install apache2 -y

cat <<EOF > /var/www/html/index.html
<html> 
<title> Talent-Academy ${version} </title>
<body style="background-color:${color}">
    <h1> This is the ${version} Website !! </h1>
</html>
EOF

sudo service apache2 restart