FROM ubuntu

COPY ./upload/* /opt/

RUN cd /opt/ && \
  mv /opt/apt.conf /etc/apt/apt.conf && \
  rm /etc/apt/sources.list && \
  mv /opt/sources.list /etc/apt/ && \
  apt-get update && \
  apt-get install wget -y && \
  which wget && \ 
  ls

USER daemon  