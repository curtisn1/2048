FROM alpine:latest
RUN apk --update add nginx curl
COPY ./2048 /var/lib/nginx/html
#Added new conf file for nginx 1.20
COPY ./conf /etc/nginx/http.d
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
