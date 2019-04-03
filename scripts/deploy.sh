#!/usr/bin/env bash

mvn clean package

echo 'Copy files ...'

scp -i ~/.ssh/id_rsa       \
    target/twitt-1.0-SNAPSHOT.jar
