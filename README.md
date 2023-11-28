# plusコマンド
[![test](https://github.com/ryousukeochiai/robosys2023/actions/workflows/test.yml/badge.svg)](https://github.com/ryousukeochiai/robosys2023/actions/workflows/test.yml)

標準入力から数字を読み込み以下の要素を出力する

1行目:数列の合計を足し合わせにより求める

2行目:数列の平方の合計を足し合わせにより求める

3行目:数列の合計をシグマ計算( $\frac{1}{2}n(n+1)$ )により求める

4行目:数列の平方の合計をシグマ計算( $\frac{1}{6}n(n+1)(2n+1)$ )により求める

# インストール方法

以下のコマンドを入力してください

```
$ git clone https://github.com/ryousukeochiai/robosys2023.git
```

```
$ cd robosys2023
```

## 実行例

例1

入力

```
$ seq 5 | ./plus
```

出力

```
15.0

55.0

15.0

55.0
```


例2

入力

```
$ seq 5 10  | ./plus
```

出力

```
45.0

355.0

45.0

355.0
```


## 必要なソフトウェア
* Python
  * テスト済み: 3.7〜3.10

* Ubuntu 20.04

## ライセンス
* このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．
* このパッケージのコードは，下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て自身の著作としたものです．
   * [ryuichiueda/my_slides/robosys_2022](https://github.com/ryuichiueda/my_slides/tree/master/robosys_2022)

* © 2023 Ryousuke Ochiai
