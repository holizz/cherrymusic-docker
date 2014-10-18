FROM python:3

RUN pip install CherryPy
RUN pip install CherryMusic

ADD cherrymusic.conf /root/.config/cherrymusic/cherrymusic.conf

VOLUME ["/music", "/root/.local"]
EXPOSE 3000
CMD rm -f /root/.local/share/cherrymusic/cherrymusic.pid && exec cherrymusic --port 3000
