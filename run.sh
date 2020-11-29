#!/bin/bash
set -ex

sudo kill -9 $(sudo lsof -t -i:8081) &&
sudo cp *.jar / &&
echo ok &&
sudo /usr/lib/jvm/java-14-openjdk-amd64/bin/java -jar /jenkins/AllPets-0.0.1-SNAPSHOT.jar --server.port=8081&
echo start
