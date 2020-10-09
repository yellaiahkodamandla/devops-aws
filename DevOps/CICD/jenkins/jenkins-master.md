## jenkins master-slave 
### Master 
    1. install jenkins server 
    2. enable password base authentication ```/etc/ssh/sshd_config``` 
    3. assign sudo permission ```visudo``` 
    4. login into jenkins user ```su jenkins```
    5. generate keys ```ssh-keygen```
    6. copy keys into slave ```ssh-copy-id userslave@ip```
    7. restart sshd ```ssh restart sshd``` 
###  maven slave 
    1. install java8 and maven 
       ```
       sudo apt-get update
       sudo apt-get install opejdk-8-jdk -y
       sudo apt-get install maven -y
       ```  
    2. create user 
       ```
       adduser maven
       ``` 
    3. assign sudo permissions ```visudo```
    4. enable password base authentication ```/etc/ssh/sshd_config``` 
    5. restart sshd ```ssh restart sshd``` 
### establish master-slave connection 
   1. gotot master as jenkins user and copy keys into slave ```ssh-copy-id userslave@ip``` 
   2. do setup on jenkins (manage jenkins --> managenodes -->new node) 