#!/bin/bash

# If the .bash_profile does not already have a `cd /app` command, add it.
if [ `grep -c "cd /app" /home/vagrant/.bash_profile` -eq 0 ]
then
  echo "cd /app" >> /home/vagrant/.bash_profile
fi

cd /app
bundle install

# If the databases have not been created yet, create them
if [ `mysql -e "SHOW DATABASES" -u root | grep -c 'factotum'` -eq 0 ]
then
  rake db:create
fi

rake db:migrate
