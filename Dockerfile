FROM nginx
LABEL maintainer address "koteswarao"
COPY ./index.html /usr/share/nginx/html
EXPOSE 80
