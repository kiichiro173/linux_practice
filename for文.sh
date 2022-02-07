if [ -d $1 ]; then
    ls
elif [ -f $1 ]; then
    cat $1 | head -n 5
else
    echo 'いずれにも該当しません。'
fi

# for文の記載方法　doとdoneの間に記載をする
for name in aaa bbb ccc
do

    echo "this is $name"

done

for shname in *.sh
do

    echo "this is $shname"

done