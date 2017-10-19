#!/bin/bash

echo "curling the key.."
curl https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
wait

echo "adding repository..."
sudo add-apt-repository "$(curl https://packages.microsoft.com/config/ubuntu/16.04/mssql-server-2017.list)"
wait

echo "updating..."
sudo apt-get update
wait

echo "installing mssql-server pakage"
sudo apt-get install -y mssql-server
wait

echo "set it up now..."
sudo /opt/mssql/bin/mssql-conf setup
wait

echo "get the status of the server..."
systemctl status mssql-server

echo "Done! Happy SQL-SERVER!"
