FROM alpine:3.10
COPY . /Skensell/epm
WORKDIR /Skensell/epm
RUN apk add --no-cache gcc musl-dev
