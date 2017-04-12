FROM ubuntu:yakkety

RUN apt-get update
RUN apt-get -y install software-properties-common
RUN add-apt-repository ppa:ondrej/php
RUN apt-get update
RUN apt-get -y install git curl vim zsh sudo tmux

RUN apt-get -y --allow-unauthenticated install php7.1 php7.1-xml php7.1-mbstring php7.1-dev
RUN cd /tmp; git clone https://github.com/nikic/php-ast.git && cd php-ast && phpize && ./configure && make && make install

RUN useradd -c '' -m -d /home/asm -G sudo -s /bin/zsh asm
ADD etc /etc
USER asm
WORKDIR /home/asm

EXPOSE 22
EXPOSE 80
CMD ["/bin/zsh"]
