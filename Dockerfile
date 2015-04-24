FROM resin/rpi-node:latest

RUN apt-get install -y build-essential

ADD . /app

RUN cd /app && npm install

RUN cd /app/pi-blaster && make pi-blaster

CMD ["bash", "/app/start.sh"]