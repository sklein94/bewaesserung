#/bin/sh

#https://support.rackspace.com/how-to/installing-mysql-server-on-ubuntu/
sudo apt-get update
sudo apt-get install mysql-server
sudo ufw allow mysql
systemctl start mysql

#https://www.youtube.com/watch?v=yuz1ejg_zjg
#https://stackoverflow.com/questions/32754461/how-to-install-mysql-connector-via-pip
sudo -H pip install --upgrade pip
pip install mysql-connector
