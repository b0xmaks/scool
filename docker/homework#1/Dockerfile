FROM ubuntu:20.04
ENV TZ=Europe/Moscow
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt update && apt upgrade -y && apt install git default-jdk tomcat9 maven -y
EXPOSE 8080
RUN cd /tmp
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git 
RUN cd /boxfuse-sample-java-war-hello 
RUN mvn package
RUN cd /target
RUN cp hello-1.0.war /var/lib/tomcat9/webapps/