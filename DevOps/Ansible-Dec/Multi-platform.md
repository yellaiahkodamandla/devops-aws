## write a one playbook it applies to multi platform 
  apt --> fail centos machines
  yum --> fail ubuntu machines 
  * in this situation we need to use conditions "when" 
  * use apt when platform is ubuntu
  * use yum when platform is centos 
## install LAMP on centos manually 
  1. luanch centos machine
  2. install lamp [LAMP](https://www.digitalocean.com/community/tutorials/how-to-install-linux-apache-mysql-php-lamp-stack-on-centos-7) 
  3. LAMP 
     ```
     sudo yum install httpd
     sudo systemctl start httpd.service
     sudo systemctl enable httpd.service
     sudo yum install php php-mysql
     sudo systemctl restart httpd.service
     sudo vi /var/www/html/info.php   
       ----
       <?php phpinfo(); ?>
       ----
     ``` 
1. yum install httpd convert into ansible task 
   ```
   yum: 
     name: httpd 
     state: present 
   ``` 
2. start and enable httpd server 
   ```
   systemd:
     name: httpd
     state: started
     enabled: yes 
   ``` 
3. install php and php-mysql 
   ```
   yum: 
     name: "{{ item }}"
     state: present 
   loop: 
     - php
     - php-mysql  
    ``` 
4. restart httpd service
   ```
    service: 
      name: httpd
      state: restarted 
   ``` 
5. open this file /var/www/html/info.php and insert content 
   ```
   copy: 
     src: info.php
     dest: /var/www/html/info.php 
   ```
   