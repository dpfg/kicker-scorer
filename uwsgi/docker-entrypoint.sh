#!/bin/bash

# give some time to initilize DB container
sleep 3

cat /etc/hosts

# migrate DB
cd /code/api/
python3 manage.py db upgrade

supervisord -n
