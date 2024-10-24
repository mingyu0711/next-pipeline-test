#!/bin/bash
REPOSITORY=/srv/

cd $REPOSITORY

sudo npm install

sudo pm2 start npm --name "server" -- start