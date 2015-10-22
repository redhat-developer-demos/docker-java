FROM fedora:22

MAINTAINER Rafael Benevides <benevides@redhat.com>

#Install wget and Apache HTTPD
RUN dnf -y update && dnf -y install httpd && dnf clean all
ADD index.html  /var/www/html/

RUN mkdir -p /var/www/html/downloads

#Change Workdir to apache dir
WORKDIR /var/www/html/downloads

#Place JBDS inside the image
ADD downloads/jboss-devstudio-9.0.0.GA-installer-standalone.jar /var/www/html/downloads/

#Setup permission for JBDS
RUN chmod 644 /var/www/html/downloads/jboss-devstudio-9.0.0.GA-installer-standalone.jar

#Get WildFly 9.0
RUN curl -L http://download.jboss.org/wildfly/9.0.1.Final/wildfly-9.0.1.Final.zip -o wildfly-9.0.1.Final.zip

#Get Boot2docker 1.8.3
RUN curl -L https://github.com/boot2docker/boot2docker/releases/download/v1.8.3/boot2docker.iso -o boot2docker.iso

RUN mkdir -p /var/www/html/downloads/virtualbox
WORKDIR /var/www/html/downloads/virtualbox

#Get VirtualBox for MAC
RUN curl -L http://download.virtualbox.org/virtualbox/5.0.6/VirtualBox-5.0.6-103037-OSX.dmg -o VirtualBox-5.0.6-103037-OSX.dmg

#Get VirtualBox for Windows
RUN curl -L http://download.virtualbox.org/virtualbox/5.0.0/VirtualBox-5.0.0-101573-Win.exe -o VirtualBox-5.0.0-101573-Win.exe

#Get VirtualBox for Linux (All Distros)
RUN curl -L http://download.virtualbox.org/virtualbox/5.0.6/VirtualBox-5.0.6-103037-Linux_amd64.run -o VirtualBox-5.0.6-103037-Linux_amd64.run

WORKDIR /var/www/html/downloads

#Get Git for Windows
RUN curl -L https://github.com/git-for-windows/git/releases/download/v2.6.1.windows.1/Git-2.6.1-64-bit.exe -o Git-2.6.1-64-bit.exe

RUN mkdir -p /var/www/html/downloads/docker
WORKDIR /var/www/html/downloads/docker

#Get Docker Machine Windows
RUN curl -L https://github.com/docker/machine/releases/download/v0.4.1/docker-machine_windows-amd64.exe -o docker-machine.exe

#Get Docker Machine MacOS
RUN curl -L https://github.com/docker/machine/releases/download/v0.4.1/docker-machine_darwin-amd64 -o docker-machine_darwin-amd64

#Get Docker Machine Linux
RUN curl -L https://github.com/docker/machine/releases/download/v0.4.1/docker-machine_linux-amd64 -o docker-machine_linux-amd64

#Get Docker Client Mac OS
RUN curl -L https://get.docker.com/builds/Darwin/x86_64/docker-latest -o docker-latest-mac

#Get Docker Client Linux
RUN curl -L https://get.docker.com/builds/Linux/x86_64/docker-latest -o docker-latest-linux

#Get Docker Client Windows
RUN curl -L http://test.docker.com.s3.amazonaws.com/builds/Windows/x86_64/docker-1.8.3.exe -o docker-1.8.3.exe

WORKDIR /var/www/html/downloads

#Get Maven binaries
RUN curl -L http://apache.mirrors.tds.net/maven/maven-3/3.3.3/binaries/apache-maven-3.3.3-bin.zip -o apache-maven-3.3.3-bin.zip

#Get Kubernetes
RUN curl -L https://github.com/kubernetes/kubernetes/releases/download/v1.0.6/kubernetes.tar.gz -o kubernetes.tar.gz

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

EXPOSE 80

# Simple startup script to avoid some issues observed with container restart
ADD run-apache.sh /run-apache.sh
RUN chmod -v +x /run-apache.sh

#Run the default apache command
CMD ["/run-apache.sh"]

