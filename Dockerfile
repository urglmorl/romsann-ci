FROM nginx

RUN ["mkdir", "/etc/nginx/conf.d"]

COPY ./conf.d /etc/nginx/conf.d

CMD ["nginx", "-g", "daemon on"]

VOLUME /etc/nginx
VOLUME /usr/share/nginx/html

EXPOSE 80

HEALTHCHECK CMD ["nginx", "-t"]