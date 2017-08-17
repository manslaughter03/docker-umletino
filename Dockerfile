FROM nginx:alpine

COPY ./public-html/ /usr/share/nginx/html/ 
