FROM openjdk:8-jre-slim

ADD bin/* /home/nexus/bin/
ADD etc/* /home/nexus/etc/
ADD lib/* /home/nexus/lib/

RUN groupadd -r nexus && useradd --no-log-init -r -g nexus nexus
RUN mkdir /home/nexus/db && chown -R nexus:nexus /home/nexus/
USER nexus
EXPOSE 8090 8091

CMD ["/home/nexus/bin/server.sh"]