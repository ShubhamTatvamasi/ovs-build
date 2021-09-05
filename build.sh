#!/bin/bash

set -ex

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

