#!/bin/bash
for pom in test2/*.pom;
do 
	mvn deploy:deploy-file -X -DrepositoryId=nexus-apifactory -Durl=https://nexus -Dfile="${pom%%.pom}.jar" -DgeneratePom=false -DpomFile="$pom" -Dmaven.wagon.http.ssl.insecure=true
	printf "${pom%%.pom}.jar"
done
