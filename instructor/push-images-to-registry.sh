# Docker hello world
docker pull hello-world
docker tag hello-world classroom.example.com:5000/hello-world
docker push classroom.example.com:5000/hello-world

# Fedora
docker pull fedora
docker pull fedora:22
docker tag fedora classroom.example.com:5000/fedora
docker tag fedora:22 classroom.example.com:5000/fedora:22
docker push classroom.example.com:5000/fedora
docker push classroom.example.com:5000/fedora:22

#CentOS
docker pull centos:7
docker tag  centos:7 classroom.example.com:5000/centos:7
docker push classroom.example.com:5000/centos:7

#Tomcat
docker pull tomcat:8.0
docker tag  tomcat:8.0 classroom.example.com:5000/tomcat:8.0
docker push classroom.example.com:5000/tomcat:8.0

# Wildfly
docker pull jboss/wildfly
docker tag jboss/wildfly classroom.example.com:5000/wildfly
docker push classroom.example.com:5000/wildfly

# Managed WildFly
docker pull rafabene/wildfly-admin
docker tag rafabene/wildfly-admin classroom.example.com:5000/wildfly-admin
docker push classroom.example.com:5000/wildfly-admin

# WildFly + Ticket-monster+H2
docker tag instructor/wildfly-ticketmonster-h2 classroom.example.com:5000/wildfly-ticketmonster-h2
docker push classroom.example.com:5000/wildfly-ticketmonster-h2

# Ticket-monster+PGSQ+WildFly
docker pull rafabene/wildfly-ticketmonster
docker tag rafabene/wildfly-ticketmonster classroom.example.com:5000/wildfly-ticketmonster
docker push classroom.example.com:5000/wildfly-ticketmonster

# Ticket-monster+PGSQ+WildFly-HA (mod_cluster)
docker pull rafabene/wildfly-ticketmonster-ha
docker tag rafabene/wildfly-ticketmonster classroom.example.com:5000/wildfly-ticketmonster-ha
docker push classroom.example.com:5000/wildfly-ticketmonster-ha

# Postgres
docker pull postgres
docker tag postgres classroom.example.com:5000/postgres
docker push classroom.example.com:5000/postgres

# Modcluster
docker pull karm/mod_cluster-master-dockerhub
docker tag karm/mod_cluster-master-dockerhub classroom.example.com:5000/mod_cluster
docker push classroom.example.com:5000/mod_cluster

# Docker Swarm
docker pull busybox
docker tag swarm classroom.example.com:5000/busybox
docker push classroom.example.com:5000/busybox

# Docker Swarm
docker pull swarm
docker tag swarm classroom.example.com:5000/swarm
docker push classroom.example.com:5000/swarm

docker pull progrium/consul
docker tag progrium/consul classroom.example.com:5000/consul
docker push classroom.example.com:5000/consul

