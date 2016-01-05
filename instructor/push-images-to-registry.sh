# Docker hello world
docker pull hello-world
docker tag hello-world classroom.example.com:5000/hello-world
docker push classroom.example.com:5000/hello-world

# Fedora
docker pull fedora
docker pull fedora:23
docker tag fedora classroom.example.com:5000/fedora
docker tag fedora:23 classroom.example.com:5000/fedora:23
docker push classroom.example.com:5000/fedora
docker push classroom.example.com:5000/fedora:22

# Wildfly
docker pull jboss/wildfly
docker tag jboss/wildfly classroom.example.com:5000/wildfly
docker push classroom.example.com:5000/wildfly

# Managed WildFly
docker tag instructor/wildfly-management classroom.example.com:5000/wildfly-management
docker push classroom.example.com:5000/wildfly-management

# Ticket-monster+PGSQ+WildFly
docker tag instructor/ticketmonster-pgsql-wildfly classroom.example.com:5000/ticketmonster-pgsql-wildfly
docker push classroom.example.com:5000/ticketmonster-pgsql-wildfly

# Postgres
docker pull postgres
docker tag postgres classroom.example.com:5000/postgres
docker push classroom.example.com:5000/postgres

# Modcluster
docker pull rafabene/mod_cluster
docker tag rafabene/mod_cluster classroom.example.com:5000/mod_cluster
docker push classroom.example.com:5000/mod_cluster

#Java EE 7 hol
docker pull arungupta/javaee7-hol
docker tag arungupta/javaee7-hol classroom.example.com:5000/javaee7-hol
docker push classroom.example.com:5000/javaee7-hol

# MySQL
docker pull mysql:latest
docker tag mysql classroom.example.com:5000/mysql
docker push classroom.example.com:5000/mysql

# WildFly MySQL
docker pull arungupta/wildfly-mysql-javaee7
docker tag arungupta/wildfly-mysql-javaee7 classroom.example.com:5000/wildfly-mysql-javaee7
docker push classroom.example.com:5000/wildfly-mysql-javaee7

# Docker Swarm
docker pull swarm
docker tag swarm classroom.example.com:5000/swarm
docker push classroom.example.com:5000/swarm

#OpenShift Origin
#docker pull openshift/origin
#docker tag openshift/origin classroom.example.com:5000/openshift-origin
#docker push classroom.example.com:5000/openshift-origin
#docker pull openshift/origin-docker-registry
#docker tag openshift/origin-docker-registry classroom.example.com:5000/openshift-origin-docker-registry
#docker push classroom.example.com:5000/openshift-origin-docker-registry
#docker pull openshift/origin-sti-builder
#docker tag openshift/origin-sti-builder classroom.example.com:5000/openshift-origin-sti-builder
#docker push classroom.example.com:5000/openshift-origin-sti-builder
#docker pull openshift/origin-deployer
#docker tag openshift/origin-deployer classroom.example.com:5000/openshift-origin-deployer
#docker push classroom.example.com:5000/openshift-origin-deployer
#docker pull arungupta/wildfly-mysql-javaee7:k8s
#docker tag arungupta/wildfly-mysql-javaee7:k8s classroom.example.com:5000/wildfly-mysql-javaee7:k8s
#docker push classroom.example.com:5000/wildfly-mysql-javaee7:k8s

