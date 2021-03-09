#!/bin/bash
# 批量新增用户 
input="users.txt"
while IFS=','';' read  username tips shell
do
echo "adding $username"
useradd -c "$tips" -m -s $shell $username
done < "$input"
