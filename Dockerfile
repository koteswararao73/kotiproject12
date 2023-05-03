FROM nginx:alpine
LABEL maintainer address "koti"
COPY ./ /usr/share/nginx/html
EXPOSE 80
