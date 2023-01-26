FROM python:3.6-alpine
LABEL maintainer="tony@dejesus.pt"
#MAINTAINER Tony tony@dejesus.pt
WORKDIR /opt
RUN apk add git && git clone https://github.com/sadofrazer/ic-webapp.git /opt
RUN pip install flask==1.1.2
EXPOSE 8080
ENV ODOO_URL=https://odoo.com
ENV PGADMIN_URL=https://pgadmin.org
ENTRYPOINT ["python", "app.py"] 
