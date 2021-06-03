FROM python:rc-buster

RUN pip install pipenv

RUN apt-get update
RUN apt-get install -y graphviz openjdk-11-jdk

RUN curl -L https://raw.githubusercontent.com/yyuu/pyenv-installer/master/bin/pyenv-installer | bash

# Install Apache JENA tools for this.
ADD https://downloads.apache.org/jena/binaries/apache-jena-4.0.0.tar.gz /apache-jena.tar.gz
RUN tar xvfz /apache-jena.tar.gz && \
    cd /apache-jena-* && \
    cp -r * /usr/local/ && \
    cd .. && \
    rm -rf /apache-jena-* && \
    rm /apache-jena.tar.gz

RUN mkdir /workspace
COPY . /workspace
WORKDIR /workspace
RUN pipenv sync

RUN mkdir inout
WORKDIR inout


