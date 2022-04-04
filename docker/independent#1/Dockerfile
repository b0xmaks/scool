FROM ubuntu:18.04
EXPOSE 5000
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -q python-all python-pip
WORKDIR /opt/webapp
COPY /user/home/requirements.txt /opt/webapp/requirements.txt
RUN pip install -r /requirements.txt
ADD /user/home/app.py /opt/webapp/app.py
CMD ["python", "app.py"]