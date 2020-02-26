FROM centos/systemd

MAINTAINER "Kiril Aleksandrov" <you@example.com>

RUN yum -y install httpd; yum clean all; systemctl enable httpd.service

COPY ip.sh /home/
RUN chmod +x /home/ip.sh
COPY ipservice.service /etc/systemd/system/
RUN systemctl enable ipservice.service

EXPOSE 80

CMD ["/usr/sbin/init"]
