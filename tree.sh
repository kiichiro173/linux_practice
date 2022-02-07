#!/bin/bash
# ファイルパスの表示スクリプト

# 関数の作成
list_recursive ()
{
    local filepath=$1
    local indent=$2

    echo "${indent}${filepath##*/}"

    if [ -d "$filepath" ]; then
        # ディレクトリである場合は、その中に含まれるファイルやディレクトリを一覧表示する。
        local file_name
        for file_name in $(ls "$filepath")
        do
            # ディレクトリの中のファイル名を取得
            list_recursive "${filepath}/${file_name}" " $indent"
        done
    
    fi



}

list_recursive $1