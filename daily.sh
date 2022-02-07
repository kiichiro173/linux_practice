#!/bin/bash
# 日付の名前のテキストを作成する。
# シェルスクリプトの中でコマンドを使用するときは$()のかっこの中にかく。
dates=$(date '+%Y-%m-%d')

dir_path='/Users/kiichiro/Desktop/data/daily'
if [ ! -e $dir_path ]; then
    mkdir $dir_path
fi

touch $dir_path/$dates.txt