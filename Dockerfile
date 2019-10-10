FROM ubuntu
LABEL maintainer="Julian Nonino <noninojulian@gmail.com>"

# Install Python 3
RUN apt-get update && \
    apt-get install -y python3-pip python3-dev && \
    cd /usr/local/bin && \
    ln -s /usr/bin/python3 python && \
    pip3 install --upgrade pip && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Install Pipenv
# RUN curl https://raw.githubusercontent.com/kennethreitz/pipenv/master/get-pipenv.py | python