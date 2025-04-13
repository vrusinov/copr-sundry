#!/bin/bash

# SPDX-FileCopyrightText: 2024 Vladimir Rusinov <vladimir.rusinov@gmail.com>
# SPDX-License-Identifier: Apache-2.0

set -e
set -x

date_v=$(date '+%Y-%m-%d')
v=3.11.10
v_short=3.11
n="python3"

mkdir -p /tmp/docker-build

docker build -t vrusinov/$n:$date_v -t vrusinov/$n:$v -t vrusinov/$n:$v.$date_v  -t vrusinov/$n:$v_short -t vrusinov/$n:latest .
docker run --rm -it vrusinov/$n:latest
docker push vrusinov/$n:latest
docker push vrusinov/$n:$date_v
docker push vrusinov/$n:$v
docker push vrusinov/$n:$v.$date_v
docker push vrusinov/$n:$v_short
