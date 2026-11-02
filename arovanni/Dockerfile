# Arovanni & Company Construction — sheethappens.org
# Second app in this repo: build from repo root with this Dockerfile
# (Coolify: Dockerfile location = /arovanni/Dockerfile).
FROM nginx:1.27-alpine

RUN rm -rf /usr/share/nginx/html/*
COPY arovanni/index.html /usr/share/nginx/html/
COPY arovanni/assets/ /usr/share/nginx/html/assets/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
