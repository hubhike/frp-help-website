#!/bin/sh
SITE_ROOT=`pwd`

cd ./source
npm install

wget https://github.com/gohugoio/hugo/releases/download/v0.133.1/hugo_extended_0.133.1_Linux-64bit.tar.gz
tar -zxvf ./hugo_extended_0.133.1_Linux-64bit.tar.gz
./hugo

if [ -d "./public" ]; then
    rm -rf $SITE_ROOT/docs
    touch ./public/CNAME
    echo "gofrp.org" > ./public/CNAME
    cp -rf ./public $SITE_ROOT/docs
fi

cd $SITE_ROOT
