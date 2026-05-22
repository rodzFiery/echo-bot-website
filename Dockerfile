FROM nginx:alpine
COPY . /usr/share/nginx/html
EXPOSE 80
CMD sed -i -e 's/80/'"$PORT"'/g' /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'
