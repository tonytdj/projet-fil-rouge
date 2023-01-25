FROM python:3.6-alpine
LABEL maintainer="tony@dejesus.pt"
#MAINTAINER Tony tony@dejesus.pt
WORKDIR /opt
ENV ODOO_URL PGADMIN_URL
RUN apt-get update -y && apt-get install python-dev python3-dev libsasl2-dev python-dev libldap2-dev libssl-dev -y
RUN pip install flask==1.1.2
EXPOSE 8080
ENTRYPOINT ["python","app.py"] 
