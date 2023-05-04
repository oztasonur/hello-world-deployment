 FROM ubuntu:latest

 MAINTAINER Onur Oztas <docker@onuroztas.com>

 WORKDIR /root/hello-world

 RUN apt-get update

 RUN apt-get install -y git

 RUN apt-get install -y curl

 RUN apt-get update && apt-get upgrade

 RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.2/install.sh | bash

 RUN git clone https://gitlab.optiim.com/onur.oztas/hello-world/ /root/hello-world

 RUN apt-get install -y npm

 RUN npm install nodemon 

 EXPOSE 5000
