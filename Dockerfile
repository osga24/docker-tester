FROM ubuntu:latest
ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt upgrade -yq

RUN useradd -m user

COPY ./src/welcome.sh /home/user
RUN echo "/home/user/welcome.sh" >> /home/user/.bashrc

USER user
WORKDIR /home/user

ENV TERM=xterm-color

CMD ["/bin/bash"]
