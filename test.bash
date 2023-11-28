#!/bin/bash -xv
# SPDX-FileCopyrightText: 2023 Ryousuke Ochiai
# SPDX-License-Identifier: BSD-3-Clause

ng () {
  local res=1
  echo "NG at Line $1: $2"
  return $res
}

res=0

out=$(seq 5 | ./plus)
[ "${out}" = "15.0
55.0
15.0
55.0" ] || ng ${LINENO} "Invalid output"
### STRANGE INPUT ###
out=$(echo あ | ./plus)
if [ "$?" = 1 ] || [ -z "${out}" ]; then
  ng ${LINENO} "Invalid input 'あ'"
fi
echo "out: ${out}"
echo "\$out: $out"

out=$(echo | ./plus) #空文字
if [ "$?" = 1 ] || [ -z "${out}" ]; then
  ng ${LINENO} "Invalid input (empty)"
fi
echo "out: ${out}"

[ "$?" = 0 ] && echo OK
exit $?

