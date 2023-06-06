FROM rust:1.68.2-buster

RUN apt-get update && apt-get install -y protobuf-compiler
RUN cargo install protobuf-codegen

RUN mkdir /cmd
COPY entrypoint.sh /cmd/entrypoint.sh
RUN chmod 555 /cmd/entrypoint.sh
ENTRYPOINT [ "/cmd/entrypoint.sh" ]
