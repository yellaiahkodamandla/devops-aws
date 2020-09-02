## install LAMP stack in ubuntu machine 
   1. launch EC2 machine (open 22(ssh) and 80(http) port)
   2. login into EC2 machine
   3. install LAMP 
[LAMP Stack](https://www.digitalocean.com/community/tutorials/how-to-install-linux-apache-mysql-php-lamp-stack-ubuntu-18-04)
      L = Linux
      A = Apache2 
      M = Mysql
      P = PHP 
        ```
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
        ``` 
    Access page
    http://publicip/info.php 


## Launch 100 machines ubuntu with LAMP stack 
   1. Lauch 100 machine and login into each EC2 machine    and install LAMP Stack
   2. Launch 1 EC2 machine and login into machine install LAMP stack , create Image 
   

## Assignment 
   1. launch EC2 machine 
   2. login into EC2 machine
   3. install LAMP stack

