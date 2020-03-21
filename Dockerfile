FROM ubuntu:latest
WORKDIR /app/
RUN apt-get -y update
RUN apt -y install git build-essential nano
COPY . /app/osv/
RUN cd /app/osv/OpenSourceVentilator &&\
    mkdir libraries && cd libraries &&\
    git clone https://github.com/bxparks/UnixHostDuino.git
WORKDIR /app/osv/OpenSourceVentilator/
RUN make
