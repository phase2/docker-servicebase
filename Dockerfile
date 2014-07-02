FROM ubuntu:precise

RUN apt-get update

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y sudo ssh curl python-software-properties software-properties-common python-setuptools less vim

# Fix some apps under newer host versions of libselinux.
RUN add-apt-repository ppa:ariel-wikimedia/ppa && \
    apt-get update && \
    apt-get install -y libselinux1

CMD ["/bin/bash", "-l"]