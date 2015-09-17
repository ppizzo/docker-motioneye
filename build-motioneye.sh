#!/bin/bash

cd $(dirname $0)
docker run -i -v ${PWD}:/export ppizzo/armhf-jessie:latest bash <<EOF
apt-get update
apt-get install -y git motion libav-tools python-dev python-pip libssl-dev libjpeg-dev libcurl4-openssl-dev
pip install tornado jinja2 pillow pycurl
cd /usr/local/src
git clone https://github.com/ccrisan/motioneye.git 
cd motioneye
python ./setup.py bdist
cp dist/* /export/motioneye-dist.tar.gz
exit
EOF
