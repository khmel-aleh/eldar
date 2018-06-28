FROM ubuntu:14.04

MAINTAINER Eldar N. <eldar.nurtdinov.dev@gmail.com>

ENV TORS=/opt/framework

# Install wget, unzip
RUN apt-get update && \
    apt-get install -yqq \
        wget \
        python-pip \
        python-setuptools \
        python3-pip && \
    rm -rf /var/lib/apt/lists/* /var/cache/apt/*

ADD . .

RUN pip install --upgrade pip setuptools && \
    pip install -r requirements.txt && \
    rm -rf /tmp/*

#RUN pip3 install --upgrade pip3 setuptools && \
#    pip3 install -r requirements-python3.txt && \
#    rm -rf /tmp/*

VOLUME $TORS

WORKDIR $TORS

CMD ["cd tests/hello_world"]
CMD ["pybot hw.robot"]

#ENTRYPOINT ["pybot", "-i", "debug", "-b", "Debug.log", "-d", "Debug", "-P", ".", "-P", "core"]
