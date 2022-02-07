#!/bin/bash
# ローカル変数の取り扱いに関して

func1 ()
{
    local message="this is local message"
    echo "func1: message = $message"
}

message="global message"
echo "main(1st): message = $message"
func1
echo "main(2nd): message = $message"