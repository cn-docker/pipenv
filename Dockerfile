FROM cnservices/pyenv
LABEL maintainer="Julian Nonino <noninojulian@gmail.com>"

# Environment Variables
ENV LC_ALL C.UTF-8
ENV LANG C.UTF-8

# Install Python requirements
COPY requirements.txt /tmp/requirements.txt
RUN pip install --requirement /tmp/requirements.txt && \
    rm -Rf /root/.cache/pip
