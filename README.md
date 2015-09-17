# docker-motioneye
Dockerfile and support files for motioneye

If you wish to build motioneye by yourself, you can use the followint script:

$ ./build-motioneye.sh

To build the container:

$ docker build -t IMAGENAME .

To run the container:

$ docker run -d -p 8765:8765/tcp -v /dev/log:/dev/log -v DATADIR:/var/lib/motioneye -v ${PWD}/etc/:/usr/local/etc/ IMAGENAME
