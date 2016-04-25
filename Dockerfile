FROM centos:centos7
MAINTAINER The CentOS Project <cloud-ops@centos.org>

RUN yum -y update; yum clean all
RUN yum -y install epel-release; yum clean all
RUN yum -y install python-pip; yum clean all
RUN yum -y install python-devel python-nose python-setuptools gcc gcc-gfortran gcc-c++ blas-devel lapack-devel atlas-devel; yum clean all

COPY . /src

RUN cd /src; pip install -r requirements.txt
RUN cd /src; ./foosbot.py
