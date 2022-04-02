FROM tomcat:latest
ENV TZ=Europe/Moscow
EXPOSE 8080
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone; \
    apt update && apt upgrade -y && apt install git maven default-jdk -y; \
    cd /tmp; \
    git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR /tmp/boxfuse-sample-java-war-hello/
RUN mvn package -Dmaven.test.skip -T 1C; \
    cp /tmp/boxfuse-sample-java-war-hello/target/hello-1.0.war /var/lib/tomcat9/webapps/
    CMD ["catalina.sh", "run"]