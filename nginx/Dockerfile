# FROM nginx:1.15.0-alpine

FROM nginx
RUN cp /etc/nginx/nginx.conf /etc/nginx/nginx.conf.bkp
COPY nginx.conf /etc/nginx/nginx.conf
EXPOSE 80:80