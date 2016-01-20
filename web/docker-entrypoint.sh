#!/bin/bash

# give some time to initialize other containers
sleep 4

supervisord -n
