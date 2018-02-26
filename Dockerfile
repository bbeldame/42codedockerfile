FROM rsmmr/clang
MAINTAINER bbeldame bbeldame@student.42.fr

WORKDIR /root/work

RUN apt-get update
RUN apt-get install -y zsh wget libncurses5-dev libncursesw5-dev
RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true

ADD ./.zshrc /root
ADD ./.vimrc /root