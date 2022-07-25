FROM mysql:8.0

EXPOSE 3306

ADD ./my.cnf /etc/mysql/conf.d/myconf
RUN chmod 644 /etc/mysql/conf.d/myconf

CMD ["mysqld"]