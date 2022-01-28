#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd)"
URL=$(basename $(dirname ${DIR}))
DIR=${HOME}/${URL}

pushd ${DIR}

rm -f static
rm -f output

ln -sf ../sites/${URL} output
ln -sf output/static static

popd
