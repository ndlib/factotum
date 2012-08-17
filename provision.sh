#!/bin/bash

cd /project
bundle install
rake db:create
rake db:migrate
