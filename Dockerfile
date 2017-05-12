FROM python:latest
MAINTAINER meteorsoftware@qq.com
ENV container docker
LABEL name="pythonLCBot Image" \
    vendor="pythonLCBot” \
    license="GPLv2" \
build-date="20170515"
RUN apt-get update
RUN cd /opt \
    && git clone  https://github.com/LCTT/LCBot.git \
    && cd /opt/LCBot \
    && pip3 install -U -r  requirements.txt
CMD ["/bin/bash", "-c", "echo welcome osmeteor python"]

