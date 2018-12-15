# Dockerfile

FROM nginx

LABEL maintainer="Reem alqa2599@stthomas.edu"

EXPOSE 80

COPY ${WORKSPACE}/index.html /usr/share/nginx/html/
