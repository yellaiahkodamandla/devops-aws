## Docker Instructions
   1. FROM:  its base Image   FROM jboss/keycloak , FROM tomcat:8 , FROM node:15.2 
   2. LABEL: meta data eg: "author"="John" 
   3. RUN: you can run any commands , run is execute while building the image
   4. ADD: download from remote or local  and deploy into container
   5. COPY: copy from local and deploy into container
   6. EXPOSE: open port in container
   7. CMD: cmd is execute while runing the container , it  define container life time    eg: echo "helo" 
   * Override the command
        ```
        FROM ubuntu
        CMD ["echo","hello"]
        ```
   8.  ENTRYPOINT: cmd is execute while runing the container , it  define container life time    eg: echo "helo" 
   * append the command
   9.  USER:   switch user eg: su jenkins
   10.  WORKDIR 
   11.  VOLUME
   12.  STOPSIGNAL
   13.  ARG: you can pass value while building the image
   14.  ENV: Even after build image you can change values

.net :  dll or exe
java: war , jar , ear
java -jar *.jar