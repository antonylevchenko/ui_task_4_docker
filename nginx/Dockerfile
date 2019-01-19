# basic ubuntu image
FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive

# installing nginx
RUN apt-get update && apt-get install -y \
	nginx \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/*

# copying configuration files
COPY ./configuration/default /etc/nginx/sites-available/default
COPY ./configuration/proxy_params /etc/nginx/proxy_params

# setting up port for listening
EXPOSE 80

ENTRYPOINT ["nginx", "-g", "daemon off;"]