#!/bin/bash

echo "Hello World"

git clone https://github.com/openvswitch/ovs.git --depth 1

cd ovs

./boot.sh

