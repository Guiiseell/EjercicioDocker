# Dockerfile para el balanceo de carga

FROM nginx:latest
COPY nginx.conf /etc/nginx/nginx.conf
EXPOSE 80
