FROM alpine:3.17.0

RUN apk update && apk upgrade
RUN apk add git vim neovim

# Don't cache this step
ADD "https://api.github.com/repos/johnvanhienen/vim-102/commits?per_page=1" latest_commit
RUN git clone https://github.com/johnvanhienen/vim-102.git && rm -rf /vim-102/.git && rm -rf /vim-102/.github

WORKDIR /vim-102
