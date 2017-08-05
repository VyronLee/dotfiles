FROM ubuntu:16.04

RUN apt update && apt install -y tzdata git locales findutils sudo

RUN useradd dev && \
    echo "ALL            ALL = (ALL) NOPASSWD: ALL" >> /etc/sudoers && \
    cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    dpkg-reconfigure locales && \
    locale-gen en_US.UTF-8 && \
    /usr/sbin/update-locale LANG=en_US.UTF-8

ENV HOME /home/dev
ENV LC_ALL en_US.UTF-8

WORKDIR /home/dev
RUN chown -R dev:dev $HOME
USER dev

RUN git clone https://github.com/VyronLee/dotfiles.git .dotfiles
RUN cd .dotfiles \
    && git submodule update --recursive --init \
    && git checkout develop \
    && sudo apt update \
    && ./script/bootstrap --dont-setup-git --overwrite-all

RUN sudo chsh -s $(grep /zsh$ /etc/shells | tail -1) dev

RUN echo "umask 077 \n" >> .localrc
RUN echo "docker" > .box-name

ENTRYPOINT ["zsh"]


