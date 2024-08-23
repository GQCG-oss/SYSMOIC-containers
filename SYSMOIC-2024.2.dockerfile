FROM ubuntu:22.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
    && apt-get install -y --no-install-recommends wget libglu1-mesa-dev freeglut3-dev mesa-common-dev \
    && apt-get clean \
    && apt-get autoremove -y

RUN wget http://sysmoic.chem.unisa.it/DISTRIB/STABIN_LNX-2024.2.tar.gz
RUN tar -zxf STABIN_LNX-2024.2.tar.gz
RUN rm STABIN_LNX-2024.2.tar.gz

RUN cd STABIN && cp * /usr/local/bin
