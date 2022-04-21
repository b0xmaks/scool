FROM tomcat:9.0.20-jre8-alpine
ADD ./boxfuse-sample-java-war-hello/target/*.war /usr/local/tomcat/webapps/
CMD ["catalina.sh", "run"]