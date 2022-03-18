import argparse

"""
    引数に関して
    arg1 に関しては'-'がないので必須項目になる。
    よってこれがないとエラーが発生する。

    $ pipenv run python arg_prac.py first --arg3 inami --arg2 kittyomo
    上記のような実装を行なった場合は以下のような実装
    arg1=first
    arg2=kittyomo
    arg3=inami
"""

parser = argparse.ArgumentParser()
parser.add_argument('arg1', help='とりあえず第1引数')# ①
parser.add_argument('--arg2', help='とりあえず第2引数')# ②
parser.add_argument('--arg3', help='とりあえず第3引数') # ③
args = parser.parse_args()    # 4. 引数を解析
print('arg1='+args.arg1)
print('arg2='+args.arg2)
print('arg3='+args.arg3)
print()
