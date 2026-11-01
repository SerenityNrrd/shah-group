# Shah Group of Companies — static landing page
# Served by nginx; container listens on port 80.
FROM nginx:1.27-alpine

# Strip the default site and ship ours
RUN rm -rf /usr/share/nginx/html/*
COPY index.html /usr/share/nginx/html/
COPY assets/ /usr/share/nginx/html/assets/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
