FROM debian:12

RUN apt-get update -y

RUN apt-get install -y postgresql


RUN echo "listen_addresses = '*' " >> /etc/postgresql/15/main/postgresql.conf

RUN echo "data_directory = '/var/lib/postgresql/data' " >> /etc/postgresql/15/main/postgresql.conf

RUN echo "host  all  all   0.0.0.0/0   md5" >> /etc/postgresql/15/main/pg_hba.conf

COPY script.sh /app/

WORKDIR /app

EXPOSE 5432

USER postgres

RUN /usr/lib/postgresql/15/bin/initdb /var/lib/postgresql/data 
RUN /usr/lib/postgresql/15/bin/pg_ctl -D /var/lib/postgresql/data -l /tmp/pg_logfile start


CMD ["sh", "script.sh"]
