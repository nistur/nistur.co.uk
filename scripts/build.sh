#!/bin/bash


DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd)"
URL=$(basename $(dirname ${DIR}))
DIR=${HOME}/${URL}

pushd ${DIR}

make

popd
