FROM ubuntu:14.04.3
MAINTAINER Fabian Stäber, fabian@fstab.de

#####################################################################################
# Current version is aws-cli/1.7.45 Python/2.7.6
#####################################################################################

RUN apt-get update && \
    apt-get upgrade -y

RUN apt-get install -y \
    git \
    ssh \
    python \
    python-pip \
    python-virtualenv

RUN adduser --disabled-login --gecos '' aws
WORKDIR /home/aws

USER aws

RUN \
    mkdir aws && \
    virtualenv aws/env && \
    ./aws/env/bin/pip install awscli && \
    echo 'source $HOME/aws/env/bin/activate' >> .bashrc && \
    echo 'complete -C aws_completer aws' >> .bashrc

USER aws
