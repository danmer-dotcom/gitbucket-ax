FROM openjdk:8-jre

LABEL maintainer="Naoki Takezoe <takezoe [at] gmail.com>"

#ADD https://github.com/gitbucket/gitbucket/releases/download/4.33.0/gitbucket.war /opt/gitbucket.war
##ADD https://github.com/gitbucket/gitbucket/releases/download/4.0/gitbucket.war /opt/gitbucket.war
ADD https://github.com/gitbucket/gitbucket/releases/download/4.32.0/gitbucket.war /opt/gitbucket.war
#ADD https://github.com/gitbucket/gitbucket/releases/download/4.31.2/gitbucket.war /opt/gitbucket.war

RUN ln -s /gitbucket /root/.gitbucket

VOLUME /gitbucket

# Port for web page and Port for SSH access to git repository (Optional)
EXPOSE 8080 29418

CMD ["sh", "-c", "java -jar /opt/gitbucket.war"]
