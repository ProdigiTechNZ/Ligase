#!/bin/sh

wget -qO - https://packages.confluent.io/deb/7.1/archive.key | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.confluent.io/deb/7.1 stable main"
sudo add-apt-repository "deb https://packages.confluent.io/clients/deb $(lsb_release -cs) main"
sudo apt update
sudo apt install librdkafka-dev

PROJDIR=`cd $(dirname $0); pwd -P`
cd $PROJDIR
echo `pwd`

export GOPROXY=https://goproxy.io

cd $PROJDIR/cmd/engine-server
go build -v -o $PROJDIR/bin/engine-server
cd $PROJDIR/cmd/federation
go build -v -o $PROJDIR/bin/federation
cd $PROJDIR/cmd/content
go build -v -o $PROJDIR/bin/content

cd $PROJDIR
go mod tidy
