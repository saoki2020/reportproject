FROM mysql:8-debian

RUN apt-get update && apt-get install -y locales \
    && sed -i -e 's/# \(ja_JP.UTF-8\)/\1/' /etc/locale.gen \
    && locale-gen \
    && update-locale LANG=ja_JP.UTF-8

ENV LC_ALL ja_JP.UTF-8

ENV LANG=ja_JP.UTF-8

ENV TZ=Asia/Tokyo

COPY ./reportdb/sql /docker-entrypoint-initdb.d

COPY ./reportdb/conf/my.cnf /etc/mysql/conf.d/mysql.cnf

EXPOSE 3306

CMD [ "mysqld" ]
