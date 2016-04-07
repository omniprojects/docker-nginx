FROM nginx:1.9
MAINTAINER Jonathan Azoff <dev@beomni.com>

RUN rm /etc/nginx/nginx.conf /etc/nginx/mime.types
COPY nginx.conf /etc/nginx/nginx.conf
COPY mime.types /etc/nginx/mime.types
COPY default /etc/nginx/sites-enabled/default

# expose both the HTTP
EXPOSE 80

CMD ["nginx"]

