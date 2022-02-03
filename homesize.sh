#!/bin/bash
du -h ~ | tail -n 1

# 作成した後は実行できるようにするために以下のようにして実行権限を付与するようにする、
# chmod +x homesize.sh