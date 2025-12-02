#!/bin/bash

# SPDX-FileCopyrightText: Google Inc
# SPDX-FileCopyrightText: 2024-2025 Vladimir Rusinov <vladimir.rusinov@gmail.com>
# SPDX-License-Identifier: Apache-2.0

set -e
set -x

date_v=$(date '+%Y-%m-%d')
v="11.0.24"
major_v="11"
n="java"

docker build \
    -t vrusinov/$n:$v \
    -t vrusinov/$n:$v.$date_v \
    -t vrusinov/$n:$major_v \
    -t vrusinov/$n:$major_v.$date_v \
    .
docker run --rm -it vrusinov/$n:$v

docker push vrusinov/$n:$v
docker push vrusinov/$n:$v.$date_v
docker push vrusinov/$n:$major_v
docker push vrusinov/$n:$major_v.$date_v
