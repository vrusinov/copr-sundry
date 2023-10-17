#!/bin/bash

set -e
set -x

n="netatmo-wunderground-agent"
date_v=$(date '+%Y-%m-%d')
#v="1.0.0"

docker build -t vrusinov/$n:latest -t vrusinov/$n:$date_v .
#docker run --rm -it vrusinov/$n:latest
docker push vrusinov/$n:latest
docker push vrusinov/$n:$date_v
