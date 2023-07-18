FROM ubuntu:trusty
LABEL maintainer address "koti"
RUN apt update && apt  install apache2  -y
COPY ./ /var/www/html
CMD ["apachectl","-D","FOREGROUND"]
EXPOSE 80
