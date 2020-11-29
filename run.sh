#!/bin/bash
set -ex

git checkout back &&
sudo kill -9 `sudo lsof -t -i:8081` &&
rm -rf /jenkins &&
mkdir /jenkins &&
sudo cp *.jar / &&
sudo /usr/lib/jvm/java-14-openjdk-amd64/bin/java -jar /jenkins/AllPets-0.0.1-SNAPSHOT.jar --server.port=8081&