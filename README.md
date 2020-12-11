## Jenkins Pipeline for Simple JAVA Project - https://github.com/spring-projects/spring-petclinic

### Requirements
1. Jenkins
2. Maven
3. Docker 
4. Git
5. SonarScanner
6. Artifactory
7. Tomcat

### Pipeline Steps
#### Branch - Master
1. customworkspace init
2. Git pull
3. SonarScanner - Fail if quality gate check fails 
4. Maven build
5. Zip logs, build logs, test report etc 
6. Upload log and war file to artifactory
7. Deploy war file to tomcat

#### Branch - Docker
1. Customworkspace init
2. Git pull
3. SonarScanner - Fail if quality gate check fails 
4. Maven build
5. Zip logs, build logs, test report etc 
6. Upload log and war file to artifactory
7. Build image using DOCKERFILE
8. Push image to docker hub
9. Run the docker image
