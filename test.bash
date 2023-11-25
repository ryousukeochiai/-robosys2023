#!/bin/bash
# SPDX-FileCopyrightText: 2023 Ryousuke Ochiai
# SPDX-License-Identifier: BSD-3-Clause

ng () {
  echo "NG called at Line $1"
  echo "Expected Output: ${expected_out}"
  echo "Actual Output: ${out}"
  echo "res: ${res}"
  res=1
}

res=0

out=$(seq 5 | ./plus)
echo "Actual Output: ${out}"

# 続けてテストの部分を実行
expected_out="n = 5

for文によって求めた場合
 Σk = 15.0
 Σk^2 = 55.0

Σ計算によって求めた場合
 Σk = n(n+1)/2 = 15.0
 Σk^2 = n(n+1)(2n+1)/6 = 55.0"
echo "Before ng: res=${res}"
[ "${out}" = "${expected_out}" ] || ng ${LINENO}
echo "After ng: res=${res}"


### STRANGE INPUT ###
out=$(echo あ | ./plus)
expected_out="Error: Invalid input 'あ'"
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "${expected_out}" ] || ng ${LINENO}

out=$(echo | ./plus) #空文字
expected_out="Error: Invalid input ''"
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "${expected_out}" ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK
exit $res

