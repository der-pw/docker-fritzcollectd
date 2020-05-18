FROM alpine:3.11

# Install collectd and dependencies for fritzcollectd.
RUN apk add --no-cache \
        collectd \
        collectd-python \
        collectd-network \
        python3 \
        py3-pip \
#        py3-setuptools \
#        gcc \
#        libxml2-dev libxslt-dev python3-dev \
        py3-lxml==4.3.4-r0 \
        py3-pbr

RUN pip3 install --no-cache-dir --progress-bar off fritzcollectd==0.7.0

# Copy entrypoint script.
COPY entrypoint.sh /
RUN chmod 755 /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
