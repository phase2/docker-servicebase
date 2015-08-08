FROM centos:centos7

# Install our yum wrapper.
ADD root /

# Install base packages.
RUN yum -y install epel-release && \
    yum -y update && \
    yum -y install sudo ssh curl less vim-minimal dnsutils

# Add the s6 overlay.
ENV S6_VERSION v1.11.0.1
RUN curl -L "https://github.com/just-containers/s6-overlay/releases/download/$S6_VERSION/s6-overlay-amd64.tar.gz" | \
    tar xzvf - -C /

# Download confd.
ENV CONFD_VERSION 0.10.0
RUN curl -L "https://github.com/kelseyhightower/confd/releases/download/v$CONFD_VERSION/confd-$CONFD_VERSION-linux-amd64" > /usr/bin/confd

# Run the s6-based init.
ENTRYPOINT ["/init"]
