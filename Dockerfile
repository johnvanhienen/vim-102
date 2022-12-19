FROM alpine:3.17.0

RUN apk update && apk upgrade

RUN apk add git vim neovim

RUN git clone https://github.com/johnvanhienen/vim-102.git && rm -rf /vim-102/.git/

WORKDIR /vim-102
