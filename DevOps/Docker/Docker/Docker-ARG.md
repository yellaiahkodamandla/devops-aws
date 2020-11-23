## ARG 
   1. if you want write reusable dockerfile we need to use variables 
   2. we have ARG and ENV 
   3. ARG we can pass only while building the Image
   4. ENV we can pass even while runing the container
## Dockerfile
   ```
   FROM tomcat:8
   LABEL "email"="abc@gmail.com"
   ARG src
   ARG dest
   ADD $src $dest
   EXPOSE 8080
   CMD ["catalina.sh", "run"]
   ```
   * Build Image 
    ```
    docker image build --build-arg src=https://war-jar-vn.s3.amazonaws.com/gameoflife.war --build-arg dest=/usr/local/tomcat/webapps -t arg:1.0 .
    ``` 