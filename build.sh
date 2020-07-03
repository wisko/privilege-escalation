#!/bin/bash

mkdir -p build

docker build -t privilege-escalation .

docker save -o ./build/privilege-escalation.tar privilege-escalation:latest

cp start-hacking.sh build/
