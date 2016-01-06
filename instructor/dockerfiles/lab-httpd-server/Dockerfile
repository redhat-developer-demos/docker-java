FROM centos:7

MAINTAINER Rafael Benevides <benevides@redhat.com>

#Install wget and Apache HTTPD
RUN yum -y update && yum -y install httpd && yum clean all

RUN mkdir -p /var/www/html/downloads

#Change Workdir to apache dir
WORKDIR /var/www/html/downloads

#Place JBDS inside the image
ADD downloads /var/www/html/downloads


#Add other files to downloads
ADD lab-settings.xml /var/www/html/downloads/

ADD index.html  /var/www/html/

EXPOSE 80

# Simple startup script to avoid some issues observed with container restart
ADD run-apache.sh /run-apache.sh
RUN chmod -v +x /run-apache.sh

#Run the default apache command
CMD ["/run-apache.sh"]

