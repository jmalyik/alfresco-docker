FROM tomcat:9.0.33-jdk11-openjdk-slim

ENV TOMCAT_HOME /usr/local/tomcat
WORKDIR $TOMCAT_HOME

RUN rm -rf /usr/local/tomcat/webapps/* \ 
    && mkdir -p ${TOMCAT_HOME}/../modules/platform \
    && mkdir -p ${TOMCAT_HOME}/../modules/share \
    && mkdir -p /keystore \
    && mkdir -p /alf_data

COPY tomcat ${TOMCAT_HOME}

COPY keystore /keystore

ADD alfresco-global.properties ${TOMCAT_HOME}/shared/classes/alfresco-global.properties
ADD catalina.properties ${TOMCAT_HOME}/conf/catalina.properties

VOLUME /alf_data
VOLUME /keystore
VOLUME ${TOMCAT_HOME}

EXPOSE 8080