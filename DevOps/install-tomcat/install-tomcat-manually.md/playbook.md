## playbook for tomcat9 
## steps:
 1. install java
        ```
        sudo apt-get update
        sudo apt-get install default-jdk -y
        ```
       1. convert into ansible tasks 
          ```
          - name: install java and update packages
            apt: 
              name: default-jdk
              update_cache: yes
              state: present
          ``` 
  2. create tomcat group and user
     ```
     sudo groupadd tomcat
     sudo useradd -s /bin/false -g tomcat -d /opt/tomcat tomcat
     ```
       1. convert into ansible tasks
          ```
          - name: create user tomcat
            group:
              name: tomcat
              state: present
          - name: create user tomcat in tomcat group
            user: 
              name: tomcat
              state: present
              home: /opt/tomcat
              shell: /bin/false
              group: tomcat
          ``` 
  3.  Install Tomcat 
      ```
      cd /tmp
      curl -O paste_the_copied_link_here
      sudo mkdir /opt/tomcat
      sudo tar xzvf apache-tomcat-*tar.gz -C /opt/tomcat --strip-components=1
      ```
      1. convert into ansible tasks
         ```
         - name: create directory
           file:
             path: /opt/tomcat
             state: directory
         - name: download tomcat binaries and extract in /opt/tomcat
           unarchive:
              src: https://downloads.apache.org/tomcat/tomcat-9/v9.0.38/bin/apache-tomcat-9.0.38.tar.gz
              dest: /opt/tomcat
              remote_src: yes
              extra_opts: 
               - --strip-components=1
         ``` 
    4.  Update Permissions 
       ```
       cd /opt/tomcat
       sudo chgrp -R tomcat /opt/tomcat
       sudo chmod -R g+r conf
       sudo chmod g+x conf
       sudo chown -R tomcat webapps/ work/ temp/ logs/
       ``` 
      1. convert into ansible tasks
         ```
         - name: update permissions
           shell: | 
             chgrp -R tomcat /opt/tomcat
             chmod -R g+r /opt/tomcat/conf
             chmod g+x /opt/tomcat/conf
             chown -R tomcat /opt/tomcat/webapps/ /opt/tomcat/work/ /opt/tomcat/temp/ /opt/tomcat/logs/  
         ``` 
  5. create service 
     ```
     - name: copy service file from ACS to all nodes 
       copy: 
         src: service
         dest: /etc/systemd/system/tomcat.service
     - name: deamon reload
       systemd:
         daemon_reload: yes
     - name: start tomcat 
       systemd:
         state: started
         name: tomcat
         enabled: yes
     ``` 
  6. configure tomcat web management 
     ```
     - name: copy template into all nodes
       template: 
         src: tomcat-users.xml.j2
         dest: /opt/tomcat/conf/tomcat-users.xml 
     - name: Manager app
       copy: 
         src: context.xml 
         dest: /opt/tomcat/webapps/manager/META-INF/context.xml
     - name: host manager app 
       copy: 
         src: context.xml
         dest: /opt/tomcat/webapps/host-manager/META-INF/context.xml 
      - name: restart tomcat 
        systemd:
           state: restarted
           name: tomcat
      ```
       
    ```
     
     
  


      