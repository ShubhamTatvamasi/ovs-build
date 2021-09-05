#!/bin/bash

set -ex

sudo apt install -y \
  build-essential fakeroot graphviz autoconf automake bzip2 debhelper \
  dh-autoreconf libssl-dev libtool openssl procps python-all python-qt4 \
  python-twisted-conch python-zopeinterface module-assistant dkms make \
  libc6-dev python-argparse uuid-runtime netbase kmod python-twisted-web \
  iproute2 ipsec-tools openvswitch-switch racoon


git clone https://github.com/openvswitch/ovs.git --depth 1

# git clone https://github.com/openvswitch/ovs.git
# git fetch
# git checkout v2.15.1

cd ovs

# ./boot.sh

# ./configure

sudo DEB_BUILD_OPTIONS="parallel=$(nproc) nocheck" fakeroot debian/rules binary

#  --with-linux=/lib/modules/$(uname -r)/build

# fakeroot make
# make

# make dist

