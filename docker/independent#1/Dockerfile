FROM ubuntu:18.04
EXPOSE 5000
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -q python-all python-pip
WORKDIR /opt/webapp
COPY requirements.txt
RUN pip install -r /requirements.txt
ADD app.py
CMD app.py