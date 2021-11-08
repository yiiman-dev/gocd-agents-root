FROM gocd/gocd-agent-ubuntu-18.04:v21.3.0
USER root
RUN mkdir /home/go/creds
RUN apt-get update -qy
#RUN apt install -qy mailutils
RUN apt-get install -qy lftp
ARG DEBIAN_FRONTEND=noninteractive
RUN ln -fs /usr/share/zoneinfo/America/New_York /etc/localtime
RUN apt-get install -qy php-cli
RUN curl -sS https://getcomposer.org/installer -o composer-setup.php
RUN php composer-setup.php --install-dir=/usr/local/bin --filename=composer
RUN apt-get install -y zip unzip
USER go