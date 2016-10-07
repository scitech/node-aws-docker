FROM debian:jessie
MAINTAINER Tyler Gould, tg@tylergould.net

# Install Node
RUN apt-get update && \
    apt-get -y install curl && \
    curl -sL https://deb.nodesource.com/setup_6.x | bash - && \
    apt-get -y install nodejs

# Install AWS CLI
RUN apt-get -y install python python-pip build-essential groff && \
		pip install awscli

