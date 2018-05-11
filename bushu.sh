#!bin/bash
wget ftp://172.25.0.11/nginx-1.10.3.tar.gz 
n=`yum repolist | awk '/repolist/{print $2}'|sed 's/,//'`
if [ $n -le 0 ];then
        echo 没有可用的yum源
        exit
fi
yum -y install gcc openssl-devel pcre-devel
tar -xf /root/nginx-1.10.3.tar.gz
cd nginx-1.10.3/
./configure
make
make install

