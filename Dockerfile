FROM alpine:3.17.0

RUN apk update && apk upgrade
RUN apk add git vim neovim

RUN mkdir /vim-102
COPY . /vim-102
WORKDIR /vim-102
