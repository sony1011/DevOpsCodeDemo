From tomcat
Maintainer Sony
ADD https://tomcat.apache.org/tomcat-7.0-doc/appdev/target/addressbook.war /usr/local/tomcat/webapps
CMD "catalina.sh" "run"
EXPOSE 8080
