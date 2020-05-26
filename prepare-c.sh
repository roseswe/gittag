#!/bin/bash
# $Header: /home/cvs/src/c/gittag/prepare-c.sh,v 1.2 2020/05/26 16:30:05 ralph Exp $
# https://stackoverflow.com/questions/384108/moving-from-cvs-to-git-id-equivalent
# git clone https://github.com/BradleyA/markit

commit=$(git rev-parse HEAD)
tag=$(git describe --tags --always ${commit})
cat <<EOF >version.c
/* $Id: prepare-c.sh,v 1.2 2020/05/26 16:30:05 ralph Exp $ */
#include "version.h"
const char* git_tag="${tag}";
const char* git_commit="${commit}";
EOF

echo "Tag=$tag"
gcc -s -O *.c -o main

