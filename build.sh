#!/bin/bash

git clone https://github.com/openvswitch/ovs.git --depth 1

cd ovs

./boot.sh

./configure

make

make dist

