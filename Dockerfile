FROM ubuntu:16.04

RUN apt-get update -y
RUN apt-get install -y python-software-properties software-properties-common language-pack-en-base
RUN LC_ALL=en_US.UTF-8 add-apt-repository -y ppa:ondrej/php
RUN apt-get update -y

RUN apt-get install -y php7.1-cli php7.1-gearman php7.1-xml unzip

# Clean up.
RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
