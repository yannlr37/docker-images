FROM mariadb:10.3.27

ENV TZ="Europe/Paris"

RUN chmod o-w -R /etc/mysql/conf.d/ \
	&& apt-get update \
	&& apt-get install -y nano vim \
    && rm -r /var/lib/apt/lists/*
