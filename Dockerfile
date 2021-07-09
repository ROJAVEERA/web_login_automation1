FROM ubuntu:latest

MAINTAINER roja <krojakumari99@gmail.com>

WORKDIR /usr/apps/hello-docker/

RUN apt-get -y update && apt-get install nodejs npm -y

#RUN ln -s /usr/bin/nodejs /usr/bin/node........;;;;;

RUN npm install -g http-server

ADD . /usr/apps/hello-docker/

ADD index.html /usr/apps/hello-docker/index.html

CMD ["http-server", "-s"]
