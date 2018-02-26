FROM rsmmr/clang
MAINTAINER bbeldame bbeldame@student.42.fr

RUN apt-get update
RUN apt-get install -y zsh wget
RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true