#!/bin/bash

# SPDX-FileCopyrightText: 2024 Vladimir Rusinov <vladimir.rusinov@gmail.com>
# SPDX-License-Identifier: Apache-2.0

set -e
set -x

date_v=$(date '+%Y-%m-%d')
v=2.2.3
n="sftpgo"

docker build -t vrusinov/$n:latest -t vrusinov/$n:$date_v -t vrusinov/$n:$v -t vrusinov/$n:$v.$date_v .
docker run --rm -it vrusinov/$n:latest
docker push vrusinov/$n:latest
docker push vrusinov/$n:$date_v
docker push vrusinov/$n:$v
docker push vrusinov/$n:$v.$date_v
