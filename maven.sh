# compact cmd example
mvn package && java -jar target/boss-spring-boot-0.1.0.jar
mvn package && java -jar -Dspring.profiles.active=production target/boss-spring-boot-0.1.0.jar

# build jar file
mvn package 
# run java jar file
java -jar <target/filename.jar>
# install dep to .m2
mvn install 

# Archetype cmd 
# in parent package 
mvn clean install
# in new folder 
mvn archetype:generate -DarchetypeGroupId=com.dark -DarchetypeArtifactId=spring-boot-app-dark -DarchetypeVersion=1.0.0 -DgroupId=com.light -DartifactId=light-spring-boot-app2  
