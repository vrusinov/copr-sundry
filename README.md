<!--
SPDX-FileCopyrightText: Google Inc
SPDX-FileCopyrightText: 2025 Vladimir Rusinov <vladimir.rusinov@gmail.com>
SPDX-License-Identifier: Apache-2.0
-->

# Sundry package repository

## Synopsis

Collection of rpm spec files and docker images for various packages.

RPMs are available via ['sundry' COPR](https://copr.fedoraproject.org/coprs/vrusinov/sundry/).

Docker images are available on [Docker hub](https://hub.docker.com/u/vrusinov).

## Motivation

Project exists to collect various packages missing from official CentOS and
Fedora repositories as well as to backport some of the packages from Fedora to CentOS.

## Installation

Please see instructions at [COPR](https://copr.fedoraproject.org/coprs/vrusinov/sundry/)

## License

Apache 2.0.
Please see text of the license in LICENSE file.

## List of packages

### Docker

* [OpenVPN](https://openvpn.net/) 2.6.4
* [SFTPGo](https://github.com/drakkan/sftpgo) 2.2.3
* [Tsunami Security Scanner](https://github.com/google/tsunami-security-scanner)
  0.0.20

### RPMs

* cargo2rpm 0.1.15
* cmake 3.15.5
* Cython 0.23
* golang-googlecode-go-crypto / golang-golangorg-crypto 0-0.10.gitc10c31b
* golang-googlecode-goauth2
* golang-googlecode-gogoprotobuf
* golang-googlecode-goprotobuf
* golang-googlecode-google-api-client
* golang-googlecode-net
* golang-googlecode-text
* golang-gopkg-check
* golang-github-AudriusButkevicius-go-nat-pmp
* golang-github-gobwas-glob
* golang-github-bkaradzic-go-lz4
* golang-github-calmh-du
* golang-github-calmh-xdr
* golang-github-cznic-b
* golang-github-cznic-bufs
* golang-github-cznic-fileutil
* golang-github-cznic-mathutil
* golang-github-cznic-ql
* golang-github-cznic-strutil
* golang-github-cznic-sortutil
* golang-github-cznic-zappy
* golang-github-gobwas-glob
* golang-github-golang-appengine
* golang-github-golang-groupcache
* golang-github-influxdb-influxdb
* golang-github-jackpal-gateway
* golang-github-jackpal-go-nat-pmp
* golang-github-juju-ratelimit git772f5c3
* golang-github-odeke-em-extractor
* golang-github-odeke-em-cache
* golang-github-odeke-em-command
* golang-github-odeke-em-go-utils
* golang-github-odeke-em-go-uuid
* golang-github-odeke-em-meddler
* golang-github-odeke-em-semalim
* golang-github-odeke-em-pretty-words
* golang-github-onsi-ginkgo
* golang-github-onsi-gomega
* golang-github-oschwald-geoip2-golang
* golang-github-oschwald-maxminddb-golang
* golang-github-rcrowley-go-metrics
* golang-github-skratchdot-open-golang
* golang-github-stathat-go
* golang-github-syndtr-goleveldb
* golang-github-syndtr-gosnappy / golang-github-golang-snappy
* golang-github-thejerf-suture
* golang-githib-vitrun-qart
* grub2
* lafs-backup-tool
* libarchive
* libsolv
* perl-Business-ISBN
* perl-Business-ISBN-Data
* perl-Canary-Stability
* perl-Capture-Tiny
* perl-Carp
* perl-common-sense
* perl-Devel-Symdump 2.15
* perl-ExtUtils-MakeMaker / perl-ExtUtils-Command 7.10
* perl-EV 4.21
* perl-Fedora-VSP 0.001
* perl-GD 2.56
* perl-generators 1.07
* perl-GD-Barcode 1.15
* perl-HTML-Tagset 3.20
* perl-inc-latest 0.500
* perl-IO-Compress 2.069
* perl-Mojolicious 6.37
* perl-MRO-Compat 0.12
* perl-Package-Generator 1.106
* perl-Params-Util 1.07
* perl-Software-License 0.103010
* perl-Sub-Exporter 0.987
* perl-Module-Build 0.42.14
* perl-Pod-Coverage 0.23
* perl-TermReadKey 2.23
* perl-Test-Pod 1.51
* perl-Text-Template 1.46
* perl-threads 2.02
* perl-Tk 804.033
* perl-XML-Parser 2.44
* python-characteristic 14.3.0
* python-configargparse 0.9.3
* python-cryptography 1.3.1
* python-cryptography-vectors 1.3.1
* python-idna 2.0
* python-ipaddress 1.0.16
* python-iso8601 0.1.10
* python-jsonschema & python3-jsonschema 2.4.0
* python-hypothesis 1.11.2
* python-keyring & python3-keyring 5.0
* python-layered-yaml-attrdict-config 16.1.0
* python-mock 1.0.1
* python-parsedatetime 1.5
* python-psutil 4.2.0
* python-pyasn1 0.1.9
* python-pycparser 2.14
* python-rpmautospec 0.2.6
* python-rpm-macros
* python-simplejson 3.5.3
* python-six 1.10.0
* python-twisted 15.4.0
* python-zbase32 1.1.5
* python-zope-event 4.1.0
* python-zope-component 4.2.2
* pyutil 1.9.7
* rubygem-fog-profitbricks 0.0.3
* rubygem-pathspec 0.0.2
* rubygem-retriable 1.4.1
* rust-config-file 0.2.3
* rust-concolor 0.0.8
* rust-concolor-query 0.0.5
* rust-clap_mangen 0.1.11
* rust-packaging 25.2
* rust-snapbox 0.2.10
* rust-snapbox-macros 0.2.1
* yum 3.4.3-508

## TODO / Future work

* Make this unrelated to google repo.
