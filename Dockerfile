
FROM nginx:latest

RUN rm /etc/nginx/conf.d/default.conf

COPY nginx.conf /etc/nginx/conf.d

COPY index.html /usr/share/nginx/html

ENTRYPOINT ["nginx", "-g", "daemon off;"]
