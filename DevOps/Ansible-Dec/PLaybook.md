## Playbook 

1. install apache2 on ubuntu18.04  
   ```
   sudo apt-get update
   sudo apt-get install apache2 
   ``` 
2. check the status
   ```
   sudo systemctl status apache2
   or
   sudo service apache2 status 
   ``` 
3. commands convert into ansible playbook  
   1. apt-get update and apt-get install apache2  
      ```
      - name: install apache2 
        apt: 
          name: apache2
          update_cache: yes 
          state: present 
      ```
    
