FROM nginx:alpine
WORKDIR /usr/share/nginx/html
COPY wwwroot/ .
EXPOSE 8080