FROM tomcat:9.0.39-jdk8-corretto

COPY ./target/petclinic.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080
