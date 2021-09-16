FROM mariadb:10.3.29

ENV TZ="Europe/Paris"

RUN chmod o-w -R /etc/mysql/conf.d/ \
	&& apt-get update \
	&& apt-get install -y vim \
    && rm -r /var/lib/apt/lists/*
