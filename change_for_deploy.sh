#!/bin/bash

ls | grep node-v9.3.0-linux-x64.tar.gz*

if [ $? -eq 0 ]
then
    rm node-v9.3.0-linux-x64.tar.gz* --force
fi

rm jenkins-env1 --force

touch jenkins-env1

echo "Enter docker hub Registry username : "

read devshift_user

echo "Enter docker hub registry pass: "

read devshift_pass

echo "DEVSHIFT_USERNAME=$devshift_user" > jenkins-env1
echo "DEVSHIFT_PASSWORD=$devshift_pass" >> jenkins-env1

export PUSH_REGISTRY=docker.io
export ORGANISATION=devanggaur7

sed '7 i RUN yum install -y git' node_modules/fabric8-hypothesis-core-image/Dockerfile.app

sed '7 i RUN yum install -y git' node_modules/fabric8-hypothesis-core-image/Dockerfile.tests
