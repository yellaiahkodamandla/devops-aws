## Ansible Roles 
   1. reuse
   2. structure  
## Galaxy Roles 
   1. How to resue ansible galaxy role 
        1. goto ansible galaxy 
        2. ex: search for jdk8 
        3. install ansible galaxy jdk8 role
           ```
           ansible-galaxy install geerlingguy.java
           ```
        4. use in playbook  
           ```
           - hosts: server
             tasks:
             - name: installing repo for Java 8 in Ubuntu
               apt_repository: repo='ppa:openjdk-r/ppa'
               become: yes
           - hosts: server
             become: yes
             roles:
             - role: geerlingguy.java
               when: "ansible_os_family == 'Debian'"
               java_packages:
               - openjdk-8-jdk
           ```
   2. how to write ansible galaxy role
        1. write custom LAMP Role
           1. tasks
              ```
                - name: install apache2 on ubuntu 
                  apt: 
                    name: "{{ package_web }}"
                    update_cache: yes   
                    state: present 
                  when: ansible_os_family == "Debian"
                - name: install multiple packages using with items 
                  apt: 
                    name: "{{ item }}"
                    state: present 
                  loop: 
                    - php
                    - libapache2-mod-php
                    - php-mysql  
                  notify: apache2 restart
                  when: ansible_os_family == "Debian"  
                - name: copy file to nodes 
                  copy: 
                    src: test
                    dest: "{{ dest_path }}"
             ```
         2. Vars 
           ``` 
           package_web: apache2 
           dest_path: /var/www/html/info.php 
           ```
         3. file 
           * create file with info name and insert content 
           1. info
              ```
              <?php phpinfo(); ?>
              ``` 
         4. handlers 
           ```
           - name: apache2 restart 
             service: 
                name: "{{ package_web }}"
                state: restarted 
           ``` 
            
         5. use in playbook  
           ```
           - hosts: all
             become: yes
             roles:
             - LAMP
           ```  
         6. apply playbook 
           ```
           ansible-playbook lamp-role.yml -l 'localhost:172.31.27.234'
           ``` 