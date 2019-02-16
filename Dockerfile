#Base image
FROM centos:7

#Who
MAINTAINER CHANGSY "349767068@qq.com"
 #添加jdk安装包RUN
RUN mkdir /usr/lib/jvm
RUN mkdir /usr/lib/jvm/java
ADD jdk-8u181-linux-x64.tar.gz /usr/lib/jvm/java
#安装jdk
RUN sed -i '$a\export LANG=en_US.UTF-8' /etc/profile
RUN sed -i '$a\JAVA_HOME=/usr/lib/jvm/java/jdk1.8.0_181' /etc/profile
RUN sed -i '$a\JAE_HOME=/usr/lib/jvm/java/jdk1.8.0_181/jre' /etc/profile
RUN sed -i '$a\PATH=$PATH:$JAVA_HOME/bin:$JRE_HOME/bin' /etc/profile
RUN sed -i '$a\CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar:$JRE_HOME/lib' /etc/profile
RUN sed -i '$a\export JAVA_HOME JRE_HOME PATH CLASSPATH' /etc/profile
RUN source /etc/profile