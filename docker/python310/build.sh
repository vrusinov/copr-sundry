#!/bin/bash

# SPDX-FileCopyrightText: 2024 Vladimir Rusinov <vladimir.rusinov@gmail.com>
# SPDX-License-Identifier: Apache-2.0

set -e
set -x

date_v=$(date '+%Y-%m-%d')
v=3.10.15
v_short=3.10
n="python3"

mkdir -p /tmp/docker-build

docker build -t vrusinov/$n:$v -t vrusinov/$n:$v.$date_v  -t vrusinov/$n:$v_short -t vrusinov/$n:$v_short.$date_v .
docker run --rm -it vrusinov/$n:$v
docker push vrusinov/$n:$v
docker push vrusinov/$n:$v.$date_v
docker push vrusinov/$n:$v_short
docker push vrusinov/$n:$v_short.$date_v
