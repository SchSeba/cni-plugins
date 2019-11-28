FROM centos:7

RUN yum update -y && yum install tar gzip -y && yum clean all

RUN mkdir -p /usr/src/containernetworking/plugins/bin

COPY cni-plugins-linux-amd64-* /usr/src/containernetworking/plugins/bin/

WORKDIR /usr/src/containernetworking/plugins/bin/

RUN tar -xvf cni-plugins-linux-amd64-* && rm -rf cni-plugins-linux-amd64-*
