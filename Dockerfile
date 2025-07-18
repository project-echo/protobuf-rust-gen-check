FROM rust:1.84-bookworm

RUN apt-get update && apt-get install -y protobuf-compiler
RUN cargo install protobuf-codegen@3.7.2

RUN mkdir /cmd
COPY entrypoint.sh /cmd/entrypoint.sh
RUN chmod 555 /cmd/entrypoint.sh
ENTRYPOINT [ "/cmd/entrypoint.sh" ]
