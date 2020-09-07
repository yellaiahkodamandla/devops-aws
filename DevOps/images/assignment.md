## aws
   1. vertical scaling (change instance type)
      1. launch ec2 machine with t2.micro
      2. change instance type (we cant change instance type while running)
      3. stop ec2 machine
      4. chnage instance type 
   2. autoscaling 
      1. create image 
      2. launch configuration 
      3. create Autoscaling group  
   3. delete all machine and autocaling group 
## DevOps
   1. launch EC2 machine login into Ec2 machine
   2. install LAMP manually 
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
       ```
   3. access page
      ```
      http://publicip/info.php 
      ```
   4. setup ACS and Nodes 
    [click here ACS setup](https://github.com/ABBANAPURI0445/devops-aws/blob/master/DevOps/Ansible-setup.md)
   5. write playbook for LAMP server in ubuntu 
   6. apply playbook 
      ```
      ansible-playbook lamp.yml
      ```
