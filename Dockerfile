FROM ubuntu

RUN sudo apt-get update
RUN sudo sudo apt-get install -y python-software-properties software-properties-common
RUN sudo add-apt-repository ppa:chris-lea/node.js
RUN sudo apt-get update
RUN sudo apt-get install -y python g++ make nodejs
RUN sudo apt-get install -y git
RUN sudo npm install git+https://git@github.com/motusllc/hipcheck.git
ENV PATH /node_modules/hipcheck/bin:$PATH
VOLUME [~/.hipcheck, /.hipcheck]

CMD hipcheck --help