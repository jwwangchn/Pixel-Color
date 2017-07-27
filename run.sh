#!/bin/bash

# 判断build文件夹是否存在，不存在则创建
if [ ! -d "/build" ]; then
  mkdir /build
fi

# 进入build
cd build

# 判断build文件夹中是否有文件
if [ ! -f "./" ];then
    make clean
else
    echo "build不需要执行make clean"
fi
# 编译
cmake ..
make
./pixel-color