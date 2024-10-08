#!/bin/bash

set -e
set -x

date_v=$(date '+%Y-%m-%d')
v="17.0.10_p7"
n="java-build"

docker build -t vrusinov/$n:$date_v -t vrusinov/$n:$v -t vrusinov/$n:$v.$date_v -t vrusinov/$n:latest .
docker run --rm -it vrusinov/$n:latest
docker push vrusinov/$n:latest
docker push vrusinov/$n:$date_v
docker push vrusinov/$n:$v
docker push vrusinov/$n:$v.$date_v
