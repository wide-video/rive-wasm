#!/bin/bash
set -e

# Bump the version number of every npm module in the npm folder.
for dir in ./npm/*; do
    pushd $dir > /dev/null
    echo Bumping version of `echo $dir | sed 's:.*/::'`
    ../../bump_version.sh
    popd > /dev/null
done