FROM ubuntu
RUN apt-get update
RUN apt-get install tre-agrep -y
RUN apt-get install python3 -y
RUN apt-get install python-is-python3 -y
RUN apt-get install python3-pip -y
RUN pip3 install numpy biopython datetime pandas
RUN apt-get install git -y
RUN mkdir workspace
#RUN cd workspace && git clone https://github.com/wollowizard/uASPIre.git && cd uASPIre && git pull
RUN cd workspace && git clone https://github.com/Wikinaut/agrep.git && cd agrep && make
WORKDIR /workspace/uASPIre
CMD ["sh","-c","export AGREP_PATH=/workspace/agrep/agrep && ./run.sh"]
# goodbye