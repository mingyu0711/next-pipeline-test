#!/bin/bash
REPOSITORY=/srv/server

# nvm 환경 설정 로드 (nvm이 설치된 위치에 따라 다를 수 있음)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# npm과 pm2 경로 추가
export PATH=$PATH:/root/.nvm/versions/node/v20.18.0/bin

# 디렉토리 이동
cd $REPOSITORY

# npm 패키지 설치
npm ci

# pm2로 서버 시작
pm2 start npm --name "server" -- start
