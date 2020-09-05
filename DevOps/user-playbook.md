## create user using playbook 
   1. create user manually
      ```
      adduser ansible
      ``` 
   2. convert into ansible module 
      ```
      user:
        name: johnd
        state: present 
      ``` 
   3. create directory
      ```
      mkdir newdir
      ``` 
   4. convert into ansible module 
      ```
      file:
         path: /home/ansible/newdir
         state: directory
      ```
## install java in all nodes
   1. manual commands
      ```
      apt-get update 
      apt install default-jdk
      ```
   2. commands convert into ansible module 
      ```
       apt-get update = update_cahce: yes
       apt install default-jdk = 
           apt: 
            name: default-jdk
            update_cahce: yes
            state: present
      ```

## apply playbook
   1. login into ACS ```su ansible``` 
   2. create filewith .yml eg ```vi dir.yml``` 
   3. apply playbook into all nodes ```ansible-playbook playbookname.yml``` eg: ```ansible-playbook dir.yml```
    