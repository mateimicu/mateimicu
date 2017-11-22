#!/usr/bin/env bash
# Clone the Hugo binary

pushd /tmp

wget "https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz" -P
tar -zxvf "/tmp/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz"
popd

# add Hugo to path
export PATH=$PATH:"/tmp/hugo_${HUGO_VERSION}_Linux-64bit/"

