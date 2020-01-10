FROM registry.access.redhat.com/fuse7/fuse-java-openshift

USER root

RUN localedef -c -f UTF-8 -i pt_BR pt_BR.UTF-8

ENV LC_ALL pt_BR.UTF-8
ENV LANG pt_BR.UTF-8
ENV LANGUAGE pt_BR.UTF-8
ENV TZ America/Sao_Paulo

RUN mkdir /opt/building

COPY *.jar /opt/building/
COPY run.sh /opt/building/
COPY Building.* /opt/building/

WORKDIR /opt/building/

USER 1000
