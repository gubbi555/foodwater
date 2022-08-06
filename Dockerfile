FROM tomcat:8.0-alpine

LABEL maintainer="prakash"

ADD ./target/sparkjava-hello-world-1.0.war /usr/local/tomcat/webapps/

EXPOSE 8080

CMD ["catalina.sh", "run"]
