## Usage

    docker build -t holizz/cherrymusic .
    docker run --name cherrymusic-data -v /root/.local busybox /bin/true
    docker run -ti --rm -v /path/to/music:/music --volumes-from cherrymusic-data -p 3000:3000 --name cherrymusic holizz/cherrymusic

Then visit: http://localhost:3000/

Replace /path/to/music with the path to your music directory. If you want to change the port you have to change it in the Dockerfile too.
