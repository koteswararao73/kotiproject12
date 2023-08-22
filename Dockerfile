FROM nginx:alpine
LABEL maintainer address "naveen"
COPY ./ /usr/share/nginx/html
EXPOSE 80
