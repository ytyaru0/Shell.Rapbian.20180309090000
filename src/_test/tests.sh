#!/bin/bash
PATH_ROOT=$(cd $(dirname $0) && pwd)
. ${PATH_ROOT}/.meta/_lib/assert.sh/assert.sh
${PATH_ROOT}/src/_lib/path.sh
${PATH_ROOT}/src/_userlib/path.sh

# all 2 _userlib/path.sh tests passed in 0.030s.
# 上記のような書式で出力される。
# これを集計したい。
# all 100, 0.55s
#sed -E 's/^>¥([A-Z]\{2\}¥)/\1_/g' sample.fa

#. ./.meta/_lib/assert.sh/assert.sh
#./src/_lib/path.sh
