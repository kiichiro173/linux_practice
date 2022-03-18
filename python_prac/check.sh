#!/bin/bash

ARRAY=(1 2 3 4)

for num in ${ARRAY[@]}; do
    echo $(pipenv --venv)
    pipenv run python arg_prac.py $num --arg2 "inami" --arg3 "tyomo"
    echo $num"回目のループです"
done