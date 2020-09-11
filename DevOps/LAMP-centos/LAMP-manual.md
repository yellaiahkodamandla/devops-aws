## LAMP install in centos (manually) 
   1. go and search documentation 
      install lamp in centos 
   2. follow documentation 
## installation 
   1. launch centos EC2 machine 
   2. login into EC2 machine 
   3. install LAMP (follow documentaion) 
   [click here for install LAMP in Centos](https://www.digitalocean.com/community/tutorials/how-to-install-linux-apache-mysql-php-lamp-stack-on-centos-7)
      ```
      sudo yum install httpd -y
      sudo service httpd status 
      or
      sudo systemctl status httpd
      sudo systemctl start httpd 
      sudo systemctl enable httpd.service
      sudo yum install php php-mysql
      sudo systemctl restart httpd.service
      sudo vi /var/www/html/info.php
      ---
      <?php phpinfo(); ?>
      ---
      ```  
## above commands convert into ansible playbook 
   1. sudo yum install httpd -y convert into ansible task
      ```
      - name: install httpd in centos 
          yum:
            name: httpd
            state: present 
      ```
   2. sudo systemctl start httpd convert into ansible task  
       ```
       - name: start httpd service and enable 
         service: 
            name: httpd
            state: started 
            enabled: yes
       ``` 
   3. sudo yum install php php-mysql convert into ansible task
      ``` 
      - name: install php and php-mysql 
        yum: 
          name: ["php","php-mysql"]
          state: present 
      OR
      - name: install php and php-mysql 
        yum: 
          name: "{{ item }}"
          state: present 
        loop: 
         - php
         - php-mysql 
       OR
       - name: install php and php-mysql 
        yum: 
          name: "{{ item }}"
          state: present 
        with_items: 
         - php
         - php-mysql 
       ``` 
    4. restart httpd  convert into ansible task
       ```
       - name: restart httpd service and enable 
         service: 
            name: httpd
            state: restarted 
       ``` 
    5. copy file in /var/www/html/info.php      
       ```
       - name: copy file from ACS to centos node 
         copy: 
           src: /home/ansible/info.php
           dest: /var/www/html/info.php
    
           
    

       
      
      