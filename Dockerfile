FROM ubuntu:precise

RUN apt-get update

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y sudo ssh curl python-software-properties software-properties-common python-setuptools less vim ruby dnsutils ssl-cert
RUN mkdir -p /opt/sbin && curl https://godist.herokuapp.com/projects/ddollar/forego/releases/current/linux-amd64/forego -o /opt/sbin/forego && chmod a+x /opt/sbin/forego

# Fix some apps under newer host versions of libselinux.
RUN add-apt-repository ppa:ariel-wikimedia/ppa && \
    apt-get update && \
    apt-get install -y libselinux1

COPY root/ /

CMD ["/opt/bin/run"]
