# compact cmd example
mvn package && java -jar target/boss-spring-boot-0.1.0.jar
mvn package && java -jar -Dspring.profiles.active=production target/boss-spring-boot-0.1.0.jar

# build jar file
mvn package 
# run java jar file
java -jar <target/filename.jar>
# install dep to .m2
mvn install 


# bash 
for pom in target/dependency/*.pom; do mvn deploy:deploy-file -Durl=http://your/repo -Dfile="${pom%%.pom}.jar" -DgeneratePom=false -DpomFile="$pom"

# gather the pom and dep jar file 

mvn -Dmdep.copyPom=true dependency:copy-dependencies

# Archetype cmd 

# in parent package 
mvn clean install
# in new folder 
mvn archetype:generate -DarchetypeGroupId=com.dark -DarchetypeArtifactId=spring-boot-app-dark -DarchetypeVersion=1.0.0 -DgroupId=com.light -DartifactId=light-spring-boot-app2  
