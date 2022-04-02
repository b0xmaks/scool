FROM maven:eclipse-temurin
ENV TZ=Europe/Moscow
EXPOSE 8080
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone; \
    apt update && apt upgrade -y && apt install git tomcat9 -y; \
    cd /tmp; \
    git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR /tmp/boxfuse-sample-java-war-hello
RUN mvn package; \
    cd /target; \
    cp hello-1.0.war /var/lib/tomcat9/webapps/