FROM tomcat:7.0-alpine
COPY lib/mysql-connector-java-5.1.48.jar /usr/local/tomcat/lib/mysql-connector-java-5.1.48.jar
COPY target/employeeapp.war /usr/local/tomcat/webapps/employeeapp.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
