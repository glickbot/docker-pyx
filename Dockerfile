FROM maven
WORKDIR /opt
RUN git clone https://github.com/ajanata/PretendYoureXyzzy.git
WORKDIR PretendYoureXyzzy
RUN cp build.properties.example build.properties
RUN mvn clean package war:exploded -Dmaven.buildNumber.doCheck=false -Dmaven.buildNumber.doUpdate=false
EXPOSE 8080
CMD mvn jetty:run -Dmaven.buildNumber.doCheck=false -Dmaven.buildNumber.doUpdate=false
