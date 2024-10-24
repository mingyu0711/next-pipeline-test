#!/bin/bash
REPOSITORY=/srv/server

cd $REPOSITORY

sudo npm ci

sudo pm2 start npm --name "server" -- start