## install tomcat9 on ubuntu 
  1. open documentation  
  2. Luanch Ubuntu 18.04 machine 
  3. login into ec2 machine 
  4. run command ```sudo -i```
  5. STEPS 
     ```
     1. install JAVA 

https://mirrors.estointernet.in/apache/tomcat/tomcat-9/v9.0.41/bin/apache-tomcat-9.0.41.tar.gz  


curl -O https://mirrors.estointernet.in/apache/tomcat/tomcat-9/v9.0.41/bin/apache-tomcat-9.0.41.tar.gz

 

 ---
 - hosts: all
   become: yes 
   tasks: 
   - name: install java 
     apt: 
      name: default-jdk
      update_cache: yes 
      state: present 
   - name: create tomcat group  
     group: 
       name: tomcat
       state: present 
   - name: create tomcat user 
     user: 
       group: tomcat 
       home: /opt/tomcat
       name: tomcat 
       shell: /bin/false 
   - name: next task 
     command: sudo chown -R tomcat webapps/ work/ temp/ logs/ 
   - name: task xxx
     command: sudo chmod -R g+r conf 
   - name: task abc 
     shell: |
       chown -R tomcat webapps/ work/ temp/ logs/ 
       chmod -R g+r conf  

shell command raw --> execute linux commands 
not idempotent:  