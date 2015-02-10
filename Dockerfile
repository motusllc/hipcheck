FROM ubuntu

RUN sudo apt-get update
RUN sudo sudo apt-get install -y python-software-properties software-properties-common
RUN sudo add-apt-repository ppa:chris-lea/node.js
RUN sudo apt-get update
RUN sudo apt-get install -y python g++ make nodejs
ADD . .
RUN npm rebuild
VOLUME [~/.hipcheck, /.hipcheck]

CMD hipcheck --help