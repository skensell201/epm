# Building application from source files
FROM gcc:4.9
COPY . /Skensell/epm
WORKDIR /Skensell/epm
RUN ./configure --prefix=/path/to/use
RUN make
RUN make install deb.c
RUN make install rpm.c
