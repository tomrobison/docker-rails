FROM ubuntu

RUN echo "deb http://archive.ubuntu.com/ubuntu precise universe" >> /etc/apt/sources.list
RUN apt-get update

RUN apt-get -y install curl git

RUN curl -L https://get.rvm.io | bash -s stable
RUN /usr/local/rvm/bin/rvm requirements
RUN /usr/local/rvm/bin/rvm install 2.0.0-p247 --default

RUN source /etc/profile

RUN git clone https://github.com/jpruetting/cerner_hack_night

RUN cd cerner_hack_night

RUN bundle install

EXPOSE 3000
