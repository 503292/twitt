#!/usr/bin/env bash

mvn clean package

echo 'Copy files ...'

scp -i ~/.ssh/id_rsa \
    target/twitt-1.0-SNAPSHOT.jar \
    dru@51.77.152.216:/home/dru/

echo 'Restart server ...'

ssh -i ~/.ssh/id_rsa dru@51.77.152.216 <<EOF

pgrep java | xargs kill -9
nohup java -jar twitt-1.0-SNAPSHOT.jar > log.txt &
EOF

echo 'Bye'