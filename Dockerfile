FROM tomcat:8
LABEL app=my-app
RUN apt-get update \
    && mv webapps webapps.bkp \
    && mv webapps.dist webapps    
COPY target/*.war /usr/local/tomcat/webapps/myapp.war
