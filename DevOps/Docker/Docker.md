## Docker  
   1. Physical Machine: its like PC
      1. one-one tenant: one H/W on top of it one OS
      2. DisAdv: 
         1. Hardware
         2. OS: 30-40 % resource(CPU and RAM) consume by OS and subscription cost
   2. Virtual Machine: create multiple Machine on Top of Single Hardware with help of Virtulization Technology(VM ware, Hyper-V), one-multi Tenant 
       1. Adv: its Avoids Multiple H/W
       2. DisAdv: OS: 30-40 % resource(CPU and RAM) consume by OS and subscription cost 
   3. Containers: 
      1. its very thin layer of OS
      2. 95% of Resource are consume by Application
      3. containers run on Isolation 
## Monolithic Application
## Micro Service: complte application break it down into mutliple pieces 
   1. each piece called as Micro service
   2. we deploy microservice in containers
   3. in micro service we can scale up any component
## Docker Engine instalation: 
   1. launch EC2 machine
   2. install docker 
      [docker instalation](https://get.docker.com/)
      ```
      curl -fsSL https://get.docker.com -o get-docker.sh
      sh get-docker.sh
      ``` 
   3. add user to docker group 
      ```
      sudo usermod -aG docker ubuntu
      ```
   4. exit from machine and login
   5. docker --help
   6. run below commands
      ```
      docker container run -d -p 80:80 nginx
      ```
   7. access nginx container 
      ```
      dockerhostip:80
      ```