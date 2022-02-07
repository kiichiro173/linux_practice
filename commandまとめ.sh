#!/bin/bash

# ;を使用することで複数コマンドを一行で記載することができる。

# echo "root directory"; ls

# シェル変数を作成するときは＜変数名＞=＜値＞.シェル変数を使用するときは$変数名で使用するようにする！（イコールの間は開けないようにすべき！）

hoge=inami/Desctop/data/

echo $hoge

# 変数名を{}で囲むことによってそのあとに任意の文字を記載することができる。
echo ${hoge}_data

# ダブルクオートでは変数を使用することができるが、シングルだと反応しない。
country=JAPAN
echo 'I live in $country'
echo "I live in $country"

# コマンド結果をシェルスクリプトで使用する場合は$()を使用しておこなって行くと良い。
today=$(date '+%Y-%m-%d')
echo $today

#  シェルの引数に関しては$数値で取得することができる。$0はシェルスクリプト名が入るので注意が必要
echo "\$0 = $0"
echo "\$1 = $1" # 第一引数の値がここに入る。

# 引数の個数を表示させる場合には以下のよう$#を使用することによって表示することができる。
echo "\$# = $#"

# if文のあとに記載しているのはあくまでもコマンドなので、条件式ではないので注意が必要
# if文のあとのカッコは空間を空けないと上手く機能しない場合があるため注意が必要
if [ "$1" = "inami" ]; then
    echo 'this is inami'
else
    echo "this is $1 . Please check the attribute"
fi

# 数値の比較に関しては　-eqなどを使用する。少数などの比較は行うことができないのでそこは注意が必要になってくる。
if [ 7 -eq 8 ]; then
echo 'this is same integer'
else
echo 'this is not same'
fi