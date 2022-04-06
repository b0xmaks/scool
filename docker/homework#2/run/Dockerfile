FROM alpine:latest
EXPOSE 8080
WORKDIR /opt/tomcat
RUN apk update \                                                                                                                                                                                                                        
 && apk add ca-certificates wget \                                                                                                                                                                                                      
 && update-ca-certificates \
 && apk add openjdk11-jre-headless \
 && wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.62/bin/apache-tomcat-9.0.62.tar.gz \
 && tar xvzf apache-tomcat-9.0.62.tar.gz --strip-components 1 --directory /opt/tomcat \
 && /opt/tomcat/bin/catalina.sh run \
 && cp /makeapp/taget/*.war  /opt/tomcat/webapps