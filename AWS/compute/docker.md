physical server: one hardware one os 
virtual server: one hardware and multiple os's
container: 
   dockerfile: 
   build images
   run containers
docker network  -->        
docker volumes  --> 
docker compose   --> ymal , 
docker multi-stage build -->  mutliple FROM instructions 
docker restart policies  --> 
docker events  --> 
docker portainer (UI)  --> dash board
docker swarm  --> COE
  docker drawbacks:
    tomcat: 

docker:
  1 write dockerfile
     Name should be Dockerfile 
     by using docker instructions
     FROM:  base image
       deploy java application into tomcat
       linux - ubuntu 
       install java
       install tomcat
       deploy war file into webapps directory 
     .net application
      1. windows 
         enable IIS server 
         deploy dll or exe file into root directory
      2. IIS 
         deploy dll or exe file into root directory
      ```
      FROM tomcat:8.5 
      LABEL author=docker purpose=java-app
      LABEL email=abc@gmail.com 
      RUN apt-get update && apt-get install tree -y  
      CMD ["catalina.sh", "run"]

      RUN: it execute while build image 
        docker image build -t new:1.0 .
      CMD: it execute while run container
        docker container run -d -p new:1.0 
     LABEL
     RUN
     COPY: copy from docker host paste into container
     ADD: download from locally or remotly deploy into       container
     EXPOSE: EXPOSE 8080
     CMD: 
     ENTRYPOINT: 
     WORKDIR: 
     USER
     VOLUMES: 
     ARG
     ENV

  2 build image
  3 push to any registry




  dockerfile
  build image
  push registry 
    ECR tomcat-spring 

 deployment 

 what is difference between RUN & CMD
   RUN apt-get install git -y 
   FROM tomcat:8
   EXPOSE 8080 


   FROM mysql
   EXPOSE 3306

   FROM nginx
   EXPOSE 80 

   netstat --> linux
                              hostport:containerport 
   docker container run -d -p 80:8080
 what is difference between CMD & ENTRYPOINT
 what is difference between COPY & ADD 


 java
 .net
 python
 nodejs

 jenkins
 git
 docker
 kubernets 
 ansible 
    command: docker image build -t image:1.0 . 



