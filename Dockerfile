FROM ubuntu

RUN \
  apt-get update && \
  apt-get install -y python python-dev python-pip python-virtualenv && \
  rm -rf /var/lib/apt/lists/*

RUN pip install slacker \
  websocket-client\
  PyYAML\
  numpy\
  theano

RUN ./foosbot.py
