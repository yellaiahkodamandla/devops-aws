## Ansible Setup:
   1. ACS
      1. launch EC2 machine and login
      2. install ansible 
         ```
            sudo apt update
            sudo apt install software-properties-common
            sudo apt-add-repository --yes --update ppa:ansible/ansible
            sudo apt install ansible
         ```
      3. create user
         ```
         adduser ansible
         ```
      4. assign sudo permission 
         ```
         visudo
         ```
         nano -- ctrl+x and press y and enter
         vi -- ESC+:wq
      5. enable password authentication
         ```
         vi /etc/ssh/sshd_config
         ```
      6. restart sshd 
         ```
         systemctl restart sshd
         ```
   2. Nodes (3) 
      * No need to install ansible
      1. create user
      2. assign sudo permission
      3. enable password authentication
      4. retstart sshd 