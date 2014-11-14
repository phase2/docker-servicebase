FROM centos:centos7

RUN yum -y install epel-release && yum -y update
RUN yum -y install -y sudo ssh curl less vim-minimal ruby dnsutils
# @TODO: Default SSL cert?
RUN mkdir -p /opt/sbin && curl https://godist.herokuapp.com/projects/ddollar/forego/releases/current/linux-amd64/forego -o /opt/sbin/forego && chmod a+x /opt/sbin/forego

COPY root/ /

CMD ["/opt/bin/run"]
