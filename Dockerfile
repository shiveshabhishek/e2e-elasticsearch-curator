FROM centos:7

WORKDIR /usr/share/curator

COPY config.yml /usr/share/curator/config.yml

COPY action.yml /usr/share/curator/action.yml

RUN yum -y update

RUN yum --enablerepo=extras -y install epel-release

RUN yum -y install python-pip

RUN pip install -U elasticsearch-curator=5.5.4
