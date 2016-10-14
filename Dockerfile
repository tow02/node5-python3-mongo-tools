FROM node:5

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927

RUN echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-3.2.list

RUN apt-get update

RUN apt-get install -y mongodb-org-tools

RUN wget "https://www.python.org/ftp/python/3.5.2/Python-3.5.2.tar.xz"

RUN tar -xvJf Python-3.5.2.tar.xz

RUN cd Python-3.5.2 && ./configure && make && make install

RUN rm -rf Python-3.5.2.tar.xz Python-3.5.2
