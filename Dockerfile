FROM alpine

# Install collectd and dependencies for fritzcollectd.
RUN apk add --no-cache \
        collectd \
        collectd-python \
        collectd-network \
        python2 \
        py2-pip \
        libxml2 \
        libxslt \
        py2-lxml

RUN pip install --no-cache-dir --progress-bar off fritzcollectd==0.7.0

# Copy entrypoint script.
COPY entrypoint.sh /
RUN chmod 755 /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
