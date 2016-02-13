cd dockerfiles/lab-httpd-server/downloads/

#WildFly
wget -c http://download.jboss.org/wildfly/10.0.0.Final/wildfly-10.0.0.Final.zip

#Boot2Docker
wget -c https://github.com/boot2docker/boot2docker/releases/download/v1.10.1/boot2docker.iso

#Git
wget -c https://github.com/git-for-windows/git/releases/download/v2.6.2.windows.1/Git-2.6.2-64-bit.exe 

#Maven
wget -c http://apache.mirrors.tds.net/maven/maven-3/3.3.3/binaries/apache-maven-3.3.3-bin.zip

#Kubernetes
wget -c https://github.com/kubernetes/kubernetes/releases/download/v1.1.7/kubernetes.tar.gz

#VirtualBox
mkdir virtualbox
cd virtualbox
wget -c http://download.virtualbox.org/virtualbox/5.0.14/VirtualBox-5.0.14-105127-Linux_amd64.run

#Docker Toolbox
cd ..
mkdir docker
cd docker
wget -c https://github.com/docker/toolbox/releases/download/v1.10.1/DockerToolbox-1.10.1.exe
wget -c https://github.com/docker/toolbox/releases/download/v1.10.1/DockerToolbox-1.10.1.pkg

#Docker Linux
wget -c https://get.docker.com/builds/Linux/x86_64/docker-latest 
wget -c https://github.com/docker/machine/releases/download/v0.6.0/docker-machine-Linux-x86_64
wget -c https://github.com/docker/compose/releases/download/1.6.0/docker-compose-Linux-x86_64

#Vagrant
cd ..
mkdir vagrant
cd vagrant
#Windows
wget -c https://releases.hashicorp.com/vagrant/1.8.1/vagrant_1.8.1.msi
#Mac
wget -c https://releases.hashicorp.com/vagrant/1.8.1/vagrant_1.8.1.dmg
#Linux RPM
wget -c https://releases.hashicorp.com/vagrant/1.8.1/vagrant_1.8.1_x86_64.rpm
#Linux Deb
wget -c https://releases.hashicorp.com/vagrant/1.8.1/vagrant_1.8.1_x86_64.deb

cd ../../../..