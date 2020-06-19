# FROM node:latest

# COPY . /src

# WORKDIR /src

# RUN npm install --production

# EXPOSE 3000

# CMD npm start

FROM sample-ms_ubuntubase

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get update --fix-missing
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -

RUN apt-get install -y nodejs gcc make build-essential openssl make node-gyp
RUN apt-get update --fix-missing
RUN node --version
RUN npm --version

# Cleanup
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN apt-get autoremove -y

RUN ln -s /usr/bin/nodejs /usr/local/bin/node

COPY . /src

WORKDIR /src

RUN npm install --production

EXPOSE 3000

CMD npm start
