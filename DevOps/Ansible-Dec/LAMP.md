## LAMP: 
   1. install LAMP on ubuntu 18.04 
       1. find the right document  
      [LAMP installation](https://www.digitalocean.com/community/tutorials/how-to-install-linux-apache-mysql-php-lamp-stack-ubuntu-18-04)
     ```
     sudo apt-get update
     sudo apt-get install apache2 -y
     sudo apt install php libapache2-mod-php php-mysql
     sudo systemctl restart apache2 or sudo service apache2 restart 
     sudo nano /var/www/html/info.php 
        ----
        <?php
        phpinfo();
        ?>
        --- 
     ```   
## Task 1:
   ```
   - name: install apache2 on ubuntu 
     apt: 
       name: apache2
       update_cache: yes   ## apt-get update
       state: present 
   ```
## Task 2: 
   ```
   - name: install php packages 
     apt: 
       name: ["php","libapache2-mod-php","php-mysql"]
       state: present 
    OR 
   - name: install multiple packages using with items 
     apt: 
       name: "{{ item }}"
       state: present 
     with_items: 
       - php
       - libapache2-mod-php
       - php-mysql  
    OR
   - name: installl multiple packages using loop 
     apt: 
      name: "{{ item }}"
      state: present
     loop:
      - php
      - libapache2-mod-php
      - php-mysq
   ``` 
## Task 3
   ```
    - name: restar apache2 (sudo systemctl restart apache2 or service apache2     restart) 
      service: 
        name: apache2
        state: restarted 
  
      OR
    systemd: 
      name: apache2
      state: restarted  
   ```
## Task 4:
   ``` 
   - name: copy file to /var/www/html/info.php 
     copy:
       src: info.php 
       dest: /var/www/html/info.php  
   ```