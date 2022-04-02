FROM tomcat:8.5.78-jre8-openjdk
ENV TZ=Europe/Moscow
EXPOSE 8080
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone; \
    apt update && apt upgrade -y && apt install git maven -y; \
    cd /tmp; \
    git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR /tmp/boxfuse-sample-java-war-hello/
RUN mvn package; \
    cp /tmp/boxfuse-sample-java-war-hello/target/hello-1.0.war /var/lib/tomcat9/webapps/