from ubuntu:trusty

run apt-get update

run DEBIAN_FRONTEND=noninteractive apt-get install -y supervisor sudo ssh

run mkdir /var/run/sshd && \
    useradd -m -d /home/vagrant -s /bin/bash -p sa1aY64JOY94w vagrant && \
    mkdir -p /home/vagrant/.ssh && \
    echo "ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEA6NF8iallvQVp22WDkTkyrtvp9eWW6A8YVr+kz4TjGYe7gHzIw+niNltGEFHzD8+v1I2YJ6oXevct1YeS0o9HZyN1Q9qgCgzUFtdOKLv6IedplqoPkcmF0aYet2PkEDo3MlTBckFXPITAMzF8dJSIFo9D8HfdOV0IAdx4O7PtixWKn5y2hMNG0zQPyUecp4pzC6kivAIhyfHilFR61RGL+GPXQ2MWZWFYbAGjyiYJnAmCP3NOTd0jMZEnDkbUvxhMmBYSdETk1rRgm+R4LOzFUGaHqHDLKLX+FIPKcF96hrucXzcWyLbIbEgE98OHlnVYCzRdK8jlqm8tehUc9c9WhQ== vagrant insecure public key" > /home/vagrant/.ssh/authorized_keys && \
    chmod 600 /home/vagrant/.ssh/authorized_keys && \
    chown -R vagrant:vagrant /home/vagrant/.ssh && \
    echo "Defaults:vagrant !requiretty" >> /etc/sudoers && \
    echo "vagrant ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers && \
    echo "[program:sshd]\ncommand=/usr/sbin/sshd -D\n" > /etc/supervisor/conf.d/sshd.conf

expose 22

cmd ["/usr/bin/supervisord", "-n"]

