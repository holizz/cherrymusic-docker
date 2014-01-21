## Usage
#
# docker build -t holizz/cherrymusic .
# docker run -name cherrymusic-data busybox /bin/true
# docker run -d -v /path/to/music:/music -volumes-from cherrymusic-data -p 3000:3000 -name cherrymusic holizz/cherrymusic
#
# To stop/start:
# docker stop cherrymusic
# docker start cherrymusic

FROM debian
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update

RUN apt-get install -y git python3-pip
RUN /usr/bin/pip-3.2 install CherryPy

RUN git clone https://github.com/devsnd/cherrymusic.git /cherrymusic

ADD cherrymusic.conf /.config/cherrymusic/cherrymusic.conf

VOLUME ["/music", "/.local"]
USER root
EXPOSE 3000
CMD python3 /cherrymusic/cherrymusic --port 3000
