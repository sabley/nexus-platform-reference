FROM    almir/webhook:2.6.9

RUN     apk update && apk upgrade && apk add openjdk8-jre

COPY 	hooks/hooks.json /etc/webhook/hooks.json
COPY 	hooks/test-docker-iq-hook.json /etc/webhook/test-docker-iq-hook.json
COPY 	scripts/cli.sh /etc/webhook/cli.sh
COPY 	scripts/hello.sh /etc/webhook/hello.sh
COPY	nexus-iq-cli-1.55.0-01.jar /etc/webhook/nexus-iq-cli.jar

ENTRYPOINT ["/usr/local/bin/webhook -verbose -hotreload -hooks=/etc/webhook/hooks.json -hooks=/etc/webhook/test-docker-iq-hook.json"]