#!/usr/bin/env bash
set -eo pipefail

#
# Download WeChat Installed Files
#
# HOME_TGZ_URL=https://github.com/huan/docker-wechat/releases/download/v0.1/home.2.7.1.85.tgz
# HOME_TGZ_URL=https://github.com/huan/docker-wechat/releases/download/v0.1/home.2.7.1.88.tgz
# HOME_TGZ_URL=https://github.com/huan/docker-wechat/releases/download/v0.1/home.2.8.0.121.tgz
HOME_TGZ_URL=https://docker-assets.s3.cn-northwest-1.amazonaws.com.cn/wechat/home.2.7.1.88.7.tgz

curl -sL "$HOME_TGZ_URL" | tar zxf -
chown -R user:group /home/user
echo 'Artifacts Downloaded'
