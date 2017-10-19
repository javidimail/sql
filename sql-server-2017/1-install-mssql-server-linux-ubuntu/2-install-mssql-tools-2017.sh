#!/bin/bash

curl https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
wait

sudo add-apt-repository "$(curl https://packages.microsoft.com/config/ubuntu/16.04/prod.list)"
wait

sudo apt-get update
wait

sudo apt-get install -y mssql-tools unixodbc-dev
wait

echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bash_profile
echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bashrc
source ~/.bashrc
wait

#sqlcmd -S localhost -U javidimail -P '<YourPassword>'

