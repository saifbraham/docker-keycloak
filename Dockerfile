FROM  jboss/keycloak:12.0.1

USER root

WORKDIR /

ADD /config/standalone.xml   /opt/jboss/keycloak/standalone/configuration/standalone.xml

ENTRYPOINT  ["/opt/jboss/tools/docker-entrypoint.sh"]
