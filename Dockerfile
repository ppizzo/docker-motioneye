FROM ppizzo/armhf-jessie

MAINTAINER pietro.pizzo@gmail.com

# Base software
ADD motioneye-dist.tar.gz /

# Packages install and housekeeping
RUN apt-get update && apt-get -y install motion python libav-tools \
    python-pkg-resources python-pycurl python-pil python-jinja2 python-tornado && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /usr/share/doc* /usr/share/man/* /usr/share/info/* && \
    ln -s /usr/bin/avconv /usr/local/bin/ffmpeg

EXPOSE 8765

CMD ["meyectl", "startserver", "-c", "/usr/local/etc/motioneye.conf"]
