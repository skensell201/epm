# Building application from source files
FROM gcc:4.9
COPY . /Skensell/epm
WORKDIR /Skensell/epm
RUN ./configure
RUN make
RUN make install
RUN cd /Skensell/epm
RUN epm -vvv -f deb epm --output-dir deb-packages
RUN epm -vvv -f rpm epm --output-dir rpm-packages; exit 0
