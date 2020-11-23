## Docker Volumes 
   * docker containers ephemural
   * containers are terminate at any moment if terminate data will be delete
   * data will available only in two states running , stopped state
   * we need to persistant our data even after terminate the container
## create Volumes
   1. VOLUME instruction
   2. create Voulme attach to docker container
[docker volume](https://docs.docker.com/storage/volumes/)
### NOTE: we can't attach docker volume to running container
## VOLUME:
   ```
   FROM tomcat:8
   VOLUME /var/log
   EXPOSE 8080
   CMD ["catalina.sh","run"]
   ```
## create Volume and attach while create container 
   1. create Volume
      ```
      docker volume --help
      docker volume create gol
      ```
   2. attach volume while create container
      ```
      docker container run --mount 'type=volume,src=gol,dst=/var/log' --name GOL -d -P gol:1.0 
      ```