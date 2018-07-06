# KBE_BUILD_EVN
#
# VERSION               0.0.2

FROM centos:7
MAINTAINER haixiao <xiaohaoppy@163.com>

# 安装环境

RUN yum update -y
RUN yum install -y gcc gcc-c++ openssl-devel mysql-devel autoconf mariadb-devel git make 
RUN git clone https://github.com/kbengine/kbengine.git
RUN yum clean all
ADD build.sh /

VOLUME ["/kbengine"]

CMD ["sh", "/build.sh"]