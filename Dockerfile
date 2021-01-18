FROM python:rc-buster

RUN pip install pipenv

RUN apt-get update
RUN apt-get install -y graphviz

RUN curl -L https://raw.githubusercontent.com/yyuu/pyenv-installer/master/bin/pyenv-installer | bash

RUN mkdir /workspace
COPY . /workspace
WORKDIR /workspace
RUN pipenv sync

RUN mkdir inout
WORKDIR inout


