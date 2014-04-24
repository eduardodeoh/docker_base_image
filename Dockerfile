# sshd
#
# VERSION               0.0.1

FROM     ubuntu:14.04
MAINTAINER Eduardo do Oliveira Hernandes "eduardodeoh@gmail.com"

# make sure the package repository is up to date
RUN apt-get update
RUN apt-get install -y openssh-server bash-completion curl wget vim
RUN sed -i 's/PermitRootLogin without-password/PermitRootLogin yes/g' /etc/ssh/sshd_config

RUN mkdir /var/run/sshd
RUN echo 'root:root' | chpasswd

#fix locale
RUN locale-gen en_US
RUN update-locale LANG=en_US


#EXPOSE 22
#CMD    /usr/sbin/sshd -D
