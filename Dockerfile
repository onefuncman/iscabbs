FROM hugome/gcc-multilib:latest

RUN mkdir -p /home/bbs/core/bbs
RUN mkdir -p /home/bbs/data
RUN mkdir -p /home/bbs/message
RUN mkdir -p /home/bbs/etc
WORKDIR /home/bbs
COPY . /home/bbs


RUN make clean
RUN make
RUN ./setupbbs

CMD ./bbs