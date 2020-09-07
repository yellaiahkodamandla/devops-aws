## LAMP 
    
    sudo apt update or sudo apt-get update
    sudo apt install apache2 -y
    sudo apt install php libapache2-mod-php php-mysql -y
    sudo systemctl restart apache2
    sudo nano /var/www/html/info.php
    --
    <?php
    phpinfo();
    ?>
    ---
    

1. update packages and install apache2
    ```
    apt update 
    apt install apache2 -y 
    convert into ansible task:
    apt:
      name: apache2 
      state: present
      update_cache: yes ## apt-get update
    ```
2. sudo apt install php libapache2-mod-php php-mysql -y
    ```
      - name: install multiple package 
        apt: 
          name: ["php","libapache2-mod-php","php-mysql"]
          state: present
    
       OR 
        
      - name: install multiple package
        apt:
            name: "{{ item }}"
            state: present
        loop:
          - php
          - libapache2-mod-php
          - php-mysql
        
        OR
        
      - name: install multiple package
        apt:
          name: "{{ item }}"
          state: present
        with_items:
          - php
          - libapache2-mod-php
          - php-mysql
    ```
3. restart apache2 
   ```
   - name: restart apache2 
     service:
       name: apache2
       state: restarted
    ```
4. copy file from ACS to all nodes
   ```
   - name: copy info.php file into all nodes
     copy: 
       src: info.php
       dest: /var/www/html/info.php 