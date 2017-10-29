FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y \
      curl \
      git \
      tmux \
      vim

RUN git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
RUN curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

ADD .vimrc /root/.vimrc
ADD .tmux.conf /root/.tmux.conf
ADD .colors.sh /root/.colors.sh
ADD .git-prompt.sh /root/.git-prompt.sh

