## Sonarqube 
   1. its static code analysis
   2. install sonarqube 
      1. launch ubuntu machine(t2.medium) and login machine 
            ```
            /etc/apt/sources.list: deb [trusted=yes] http://downloads.sourceforge.net/project/sonar-pkg/deb  binary/

            sudo apt-get update
            sudo apt-get install openjdk-8-jdk
            sudo apt-get install sonar=6.7.4
            sudo service sonar start
            ```
   3. sonarqube integrate jenkins = a8be4dd53b335c290036728f983015d5e31632e9 
      1. install plugin (sonarqube)
      2. configure system 

## Jfrog artifactory 
   1. we can store artifcats in jfrog
   2. install jfrog [click here](https://websiteforstudents.com/how-to-install-jfrog-artifactory-on-ubuntu-18-04-16-04/)
   3. jfrog integrate jenkins 
   4. go manage jenkins 
       1. install plugin (manage plugins) (artifactory) 
       2. configure system (artifactory)



## free style 
## Pipeline 
## master-slave 
## jenkins integration 
## parameterzied 