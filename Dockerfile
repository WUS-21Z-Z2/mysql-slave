FROM mysql:5.7.8

COPY slave.cnf.template /etc/mysql/conf.d/
COPY --chmod=0777 10-envsubst-config.sh /docker-entrypoint-initdb.d/

EXPOSE 3306

CMD ["mysqld"]
