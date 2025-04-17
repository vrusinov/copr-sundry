#!/bin/bash

# SPDX-FileCopyrightText: 2025 Vladimir Rusinov <vladimir.rusinov@gmail.com>
# SPDX-License-Identifier: Apache-2.0

set -e
set -x

date_v=$(date '+%Y-%m-%d')
v="0.0.24"
n="tsunami-security-scanner"

mkdir -p /tmp/docker-build

docker build \
    -t vrusinov/$n:latest -t vrusinov/$n:$date_v -t vrusinov/$n:$v -t vrusinov/$n:$v.$date_v \
    --build-arg TSUNAMI_VERSION=${v} \
    .
docker run -e "IP_V4_TARGET=127.0.0.1" --rm -it vrusinov/$n:latest
#exit 0
docker push vrusinov/$n:latest
docker push vrusinov/$n:$date_v
docker push vrusinov/$n:$v
docker push vrusinov/$n:$v.$date_v
