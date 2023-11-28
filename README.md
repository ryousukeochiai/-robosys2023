# robosys2023
# SPDX-FileCopyrightText: 2023 Ryousuke Ochiai 　　　　　
# SPDX-License-Identifier: BSD-3-Clause
ロボットシステム学2023
* このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．
* このパッケージは，aaa由来のコード（© 2022 Hoge Fuge）を利用しています．
* このパッケージのコードは，下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て自身の著作としたものです．
* [ryuichiueda/my_slides robosys_2022](https://github.com/ryuichiueda/my_slides/tree/master/robosys_2022)

# plusコマンド
[![test](https://github.com/ryousukeochiai/robosys2023/actions/workflows/test.yml/badge.svg)](https://github.com/ryousukeochiai/robosys2023/actions/workflows/test.yml)

標準入力から数字を読み込み以下の要素を足し合わせとシグマ計算によって求める

1.数列の合計

2.数列の平方の合計

#インストール方法

以下のコマンドを入力してください

$ git clone https://github.com/ryousukeochiai/robosys2023.git

$ cd robosys2022

## 実行例

例1

入力
$ seq 5 | ./plus

出力
 Σk = -15.0
 Σk^2 = 55.0
 Σk = n(n+1)/2 = -15.0
 Σk^2 = n(n+1)(2n+1)/6 = 55.0

例2

入力
$ seq 5 10  | ./plus

出力
 Σk = 45.0
 Σk^2 = 355.0
 Σk = n(n+1)/2 = 45.0
 Σk^2 = n(n+1)(2n+1)/6 = 355.0

## 必要なソフトウェア
* Python
  * テスト済み: 3.7〜3.10

* Ubuntu 20.04 on Windows
* © 2023 Ryousuke Ochiai
