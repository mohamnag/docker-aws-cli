FROM ubuntu:latest
MAINTAINER Mohammad Naghavi <mohamnag@gmail.com>

ADD https://s3.amazonaws.com/aws-cli/awscli-bundle.zip /

RUN \
	apt-get update && \
	apt-get install -y python unzip git && \
	unzip awscli-bundle.zip && \
	/awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws

