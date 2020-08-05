FROM sonatype/nexus-iq-server:latest
COPY config.yml /etc/nexus-iq-server/

HEALTHCHECK CMD curl http://localhost:8071/ping
