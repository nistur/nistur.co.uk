#!/bin/bash

HOME=/home/$(whoami)
DIR=${HOME}/${APPLICATION_NAME}

pushd ${DIR}

make

popd
