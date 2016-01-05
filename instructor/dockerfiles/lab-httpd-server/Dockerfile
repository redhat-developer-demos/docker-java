FROM centos:7

MAINTAINER Rafael Benevides <benevides@redhat.com>

#Install wget and Apache HTTPD
#RUN dnf -y update && dnf -y install httpd && dnf clean all
RUN yum -y update && yum -y install httpd && yum clean all

RUN mkdir -p /var/www/html/downloads

#Change Workdir to apache dir
WORKDIR /var/www/html/downloads

#Place JBDS inside the image
ADD downloads/jboss-devstudio-9.0.0.GA-installer-standalone.jar /var/www/html/downloads/

#Setup permission for JBDS
RUN chmod 644 /var/www/html/downloads/jboss-devstudio-9.0.0.GA-installer-standalone.jar

#Get WildFly 9.0.2
RUN curl -L http://download.jboss.org/wildfly/9.0.2.Final/wildfly-9.0.2.Final.zip -o wildfly-9.0.2.Final.zip

#Get Boot2docker 1.9.0
RUN curl -L https://github.com/boot2docker/boot2docker/releases/download/v1.9.0/boot2docker.iso -o boot2docker.iso

RUN mkdir -p /var/www/html/downloads/virtualbox
WORKDIR /var/www/html/downloads/virtualbox

#Get VirtualBox for Linux (All Distros)
RUN curl -L http://download.virtualbox.org/virtualbox/5.0.8/VirtualBox-5.0.8-103449-Linux_amd64.run -o VirtualBox-5.0.8-103449-Linux_amd64.run

WORKDIR /var/www/html/downloads

#Get Git for Windows
RUN curl -L https://github.com/git-for-windows/git/releases/download/v2.6.2.windows.1/Git-2.6.2-64-bit.exe -o Git-2.6.2-64-bit.exe

RUN mkdir -p /var/www/html/downloads/docker
WORKDIR /var/www/html/downloads/docker

#Get Docker Toolbox (Docker, Machine and Compose)  for Windows
RUN curl -L https://github.com/docker/toolbox/releases/download/v1.9.1g/DockerToolbox-1.9.1g.exe -o DockerToolbox-1.9.1g.exe

#Get Docker Toolbox (Docker, Machine and Compose) for Mac
RUN curl -L https://github.com/docker/toolbox/releases/download/v1.9.1g/DockerToolbox-1.9.1g.pkg -o DockerToolbox-1.9.1g.pkg

#Get Docker Machine Linux
RUN curl -L https://github.com/docker/machine/releases/download/v0.5.5/docker-machine_linux-amd64.zip -o docker-machine_linux-amd64.zip

#Get Docker Client Linux
RUN curl -L https://get.docker.com/builds/Linux/x86_64/docker-latest -o docker-latest-linux

#Get Docker Compose for Linux
RUN curl -L https://github.com/docker/compose/releases/download/1.5.2/docker-compose-Linux-x86_64 -o docker-compose-Linux-x86_64

WORKDIR /var/www/html/downloads

#Get Maven binaries
RUN curl -L http://apache.mirrors.tds.net/maven/maven-3/3.3.3/binaries/apache-maven-3.3.3-bin.zip -o apache-maven-3.3.3-bin.zip

#Get Kubernetes
RUN curl -L https://github.com/kubernetes/kubernetes/releases/download/v1.1.3/kubernetes.tar.gz -o kubernetes.tar.gz

RUN mkdir -p /var/www/html/downloads/vagrant
WORKDIR /var/www/html/downloads/vagrant

#Get Vagrant MacOS
RUN curl -L https://dl.bintray.com/mitchellh/vagrant/vagrant_1.7.4.dmg -o vagrant_1.7.4.dmg

#Get Vagrant Windows
RUN curl -L https://dl.bintray.com/mitchellh/vagrant/vagrant_1.7.4.msi -o vagrant_1.7.4.msi

#Get Vagrant Debian 64-bit
RUN curl -L https://dl.bintray.com/mitchellh/vagrant/vagrant_1.7.4_x86_64.deb -o vagrant_1.7.4_x86_64.deb

#Get Vagrant Linux 64-bit
RUN curl -L https://dl.bintray.com/mitchellh/vagrant/vagrant_1.7.4_x86_64.rpm -o vagrant_1.7.4_x86_64.rpm

#Add other files to downloads
ADD downloads/lab-settings.xml /var/www/html/downloads/

ADD index.html  /var/www/html/

EXPOSE 80

# Simple startup script to avoid some issues observed with container restart
ADD run-apache.sh /run-apache.sh
RUN chmod -v +x /run-apache.sh

#Run the default apache command
CMD ["/run-apache.sh"]

