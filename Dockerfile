FROM gcc
COPY . /Skensell/epm
WORKDIR /Skensell/epm
RUN apk add --no-cache gcc musl-dev
