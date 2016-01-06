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

# Wildfly
docker pull jboss/wildfly
docker tag jboss/wildfly classroom.example.com:5000/wildfly
docker push classroom.example.com:5000/wildfly

# Managed WildFly
docker pull rafabene/wildfly-admin
docker tag rafabene/wildfly-admin classroom.example.com:5000/wildfly-admin
docker push classroom.example.com:5000/wildfly-admin

# Ticket-monster+PGSQ+WildFly
docker pull rafabene/wildfly-ticketmonster
docker tag rafabene/wildfly-ticketmonster classroom.example.com:5000/wildfly-ticketmonster
docker push classroom.example.com:5000/wildfly-ticketmonster

# Postgres
docker pull postgres
docker tag postgres classroom.example.com:5000/postgres
docker push classroom.example.com:5000/postgres

# Modcluster
docker pull rafabene/mod_cluster
docker tag rafabene/mod_cluster classroom.example.com:5000/mod_cluster
docker push classroom.example.com:5000/mod_cluster

# Docker Swarm
docker pull swarm
docker tag swarm classroom.example.com:5000/swarm
docker push classroom.example.com:5000/swarm

docker pull progrium/consul
docker tag progrium/consul classroom.example.com:5000/consul
docker push classroom.example.com:5000/consul

