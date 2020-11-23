## WORKDIR 
   1. we can change working directory using WORKDIR Instruction 
   ```
   FROM tomcat:8
   LABEL "email"="abc@gmail.com"
   ARG src
   ARG dest
   WORKDIR $dest
   ADD $src $dest
   EXPOSE 8080
   CMD ["catalina.sh", "run"]
   ```
   * Build image
     ```
      docker image build --build-arg src=https://war-jar-vn.s3.amazonaws.com/gameoflife.war --build-arg dest=/usr/local/tomcat/webapps -t workdir .
      ```