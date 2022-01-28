#!/bin/bash

DIR=${HOME}/${APPLICATION_NAME}

pushd ${DIR}

rm -f static
rm -f output

ln -sf ../sites/${APPLICATION_NAME} output
ln -sf output/static static

popd
