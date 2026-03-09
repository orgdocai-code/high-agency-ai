FROM nginx:alpine
COPY index.html /usr/share/nginx/html/
RUN echo 'server { listen 80; location / { index index.html; } }' > /etc/nginx/http.d/default.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
