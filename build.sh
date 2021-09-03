#!/bin/bash

git clone https://github.com/openvswitch/ovs.git --depth 1

cd ovs

./boot.sh

./configure --with-linux=/lib/modules/$(uname -r)/build

make

