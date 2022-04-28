FROM ubuntu:18.04
ENV TZ=Europe/Moscow
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt update && apt upgrade -y && apt install git maven -y
WORKDIR /makeapp
RUN git clone https://github.com/b0xmaks/dbapp.git
WORKDIR /makeapp/dbapp
RUN mvn package -Dmaven.test.skip -T 1C \
 && cp /makeapp/dbapp/target/*.war /makeapp
