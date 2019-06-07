#!/bin/sh

# 目的: sudo権限をもち、鍵を使用してログインできるユーザーを作成する。

if [ $# -ne 2 ]; then
    echo "usage: add_user.sh [user_name]  [private_key_name]" 1>&2
    exit 1
fi

# ユーザー追加
sudo useradd $1

# 鍵の作成と配置
## 公開鍵: /home/user名/authorized_keys
## 秘密鍵: /home/user名/秘密鍵名.pem

sudo mkdir -p /home/$1/.ssh
sudo chmod 700 /home/$1/.ssh
sudo chown $1 /home/$1/.ssh
sudo chgrp $1 /home/$1/.ssh

ssh-keygen -f /tmp/$2.pem -N ""
sudo mv /tmp/$2.pem.pub /home/$1/.ssh/authorized_keys
sudo mv /tmp/$2.pem /home/$1/.
sudo chown $1 /home/$1/.ssh/authorized_keys
sudo chgrp $1 /home/$1/.ssh/authorized_keys

# 追加したユーザーにsudoを許可する
echo "$1 ALL=NOPASSWD: ALL" | sudo tee -a /etc/sudoers
