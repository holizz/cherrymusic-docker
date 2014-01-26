FROM debian
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update

RUN apt-get install -y git python3-pip
RUN /usr/bin/pip-3.2 install CherryPy

RUN git clone https://github.com/devsnd/cherrymusic.git /cherrymusic

ADD cherrymusic.conf /.config/cherrymusic/cherrymusic.conf
ADD run.sh /run.sh

VOLUME ["/music", "/.local"]
USER root
EXPOSE 3000
CMD /run.sh
