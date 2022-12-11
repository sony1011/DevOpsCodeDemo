touch dockerfile
cat <<EOT>> dockerfile
FROM tomcat:9.0.70
ADD target/addressbook.war /usr/local/tomcat/webapps
EXPOSE 8080
CMD ["catalina.sh", "run"]
EOT
sudo docker build -t sony11/myimage:$BUILD_NUMBER .
sudo docker login -u $USERNAME -p $PASSWORD
sudo docker push sony11/myimage:$BUILD_NUMBER
sudo docker run -itd -P sony11/myimage:$BUILD_NUMBER
