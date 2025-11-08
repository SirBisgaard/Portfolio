FROM nginx:alpine
WORKDIR /usr/share/nginx/html
COPY wwwroot/ .
RUN chown -R nginx:nginx /usr/share/nginx/html
COPY default.conf /etc/nginx/conf.d/default.conf
EXPOSE 8080