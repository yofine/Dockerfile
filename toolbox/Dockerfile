FROM centos:6

MAINTAINER Yofine Liu <yofineliu@gmail.com>

RUN yum update && yum -y upgrade
RUN yum install -y epel-release
RUN yum install -y curl git htop man unzip tmux vim wget zsh openssh-server mysql-client nginx

RUN echo 'root' | passwd root --stdin
RUN ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key

# Vimrc
RUN \
  git clone git://github.com/amix/vimrc.git ~/.vim_runtime
  sh ~/.vim_runtime/install_basic_vimrc.sh

# Set ENV
ENV TERM xterm
ENV LANG en_US.UTF-8
ENV LC_CTYPE en_US.UTF-8
ENV LC_COLLATE C
ENV LANGUAGE en_US.UTF-8
ENV LC_ALL en_US.UTF-8

ENV NVM_DIR /usr/local/nvm
ENV NODE_VERSION 6.5.0


# Install nvm with node and npm
RUN curl https://raw.githubusercontent.com/creationix/nvm/v0.31.7/install.sh | bash \
    && source $NVM_DIR/nvm.sh \
    && nvm install $NODE_VERSION \
    && nvm alias default $NODE_VERSION \
    && nvm use default

ENV NODE_PATH $NVM_DIR/v$NODE_VERSION/lib/node_modules
ENV PATH      $NVM_DIR/v$NODE_VERSION/bin:$PATH

RUN bash -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

WORKDIR /root
