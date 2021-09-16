FROM nginx:1.14.2

ENV TZ="Europe/Paris"

RUN apt-get update \
	&& apt-get install -y nano vim \
    && rm -r /var/lib/apt/lists/*

CMD nginx -g 'daemon off;'
