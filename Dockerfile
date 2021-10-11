FROM nginx:alpine
COPY . /usr/share/nginx/html
EXPOSE 8080
EXPOSE 80
