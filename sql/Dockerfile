FROM mysql:5.7
RUN chown -R mysql:root /var/lib/mysql/
ADD script.sql /etc/mysql/data.sql
RUN sed -i 's/MYSQL_DATABASE/'$MYSQL_DATABASE'/g' /etc/mysql/data.sql
RUN cp /etc/mysql/data.sql /docker-entrypoint-initdb.d
EXPOSE 3306