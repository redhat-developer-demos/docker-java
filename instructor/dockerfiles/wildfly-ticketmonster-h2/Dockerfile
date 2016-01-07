# Use latest jboss/wildfly
FROM jboss/wildfly

MAINTAINER "Rafael Benevides" <benevides@redhat.com>

ADD ticket-monster.war /opt/jboss/wildfly/standalone/deployments/

# Expose the ports we're interested in
EXPOSE 8080 9990 8009

# Set the default command to run on boot
# This will boot WildFly in the standalone mode and bind to external interface
CMD /opt/jboss/wildfly/bin/standalone.sh -b `hostname -i` -bmanagement `hostname -i`