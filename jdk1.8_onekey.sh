#!/bin/bash

# 特别 ***注意*** jdk8 最后一个免费版本为 jdk-8u192-linux-x64，大于此版本需付费
# 将下载的jdk-8u192-linux-x64.tar.gz包与此脚本放置到同一目录,目录任意例如：~/abcf
# 在终端cd /opt/java，执行此脚本开始安装(sh ./文件名)
# 注意：不可有多个版本的jdk包！
# 为了使配置的环境变量生效，安装完成后你应该重新登陆。

echo "Start install the JDK version jdk-8u192-linux-x64"
jvmpath=/opt/java
jdkdirname=jdk1.8.0_192
# 不存在
if [ ! -d "$jvmpath" ]; then
    echo "正在创建$jvmpath目录"
    sudo mkdir $jvmpath
    echo "目录$jvmpath创建成功"
fi

jdkfile=$(ls | grep jdk-*-linux-*.gz)

if [ -f "$jdkfile" ]; then
    sudo tar -zxvf $jdkfile -C $jvmpath
    echo "安装JDK成功"
    echo "配置环境变量"
    mv ~/.bashrc ~/.bashrc.backup.java
    cat ~/.bashrc.backup.java >> ~/.bashrc
    echo "PATH=\"$PATH:$jvmpath/$jdkdirname/bin\"" >> ~/.bashrc
    echo "JAVA_HOME=$jvmpath/$jdkdirname" >> ~/.bashrc
    echo "CLASSPATH=.:%JAVA_HOME%/lib/dt.jar:%JAVA_HOME%/lib/tools.jar" >> ~/.bashrc
    source ~/.bashrc
    echo "配置环境成功"
    echo "测试是否安装成功"
    java -version
    echo "安装成功"

fi
