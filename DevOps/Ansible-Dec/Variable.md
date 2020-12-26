## Varibale  
```
"{{ packagename }}"
```
## 1. playbook  
     ```
      - hosts: all
        become: yes 
        vars: 
           webserver_centos: httpd
        tasks: 
        - name: install apache2 on centos 
          yum: 
            name: "{{ webserver_centos }}"
            state: present 
        - name: start httpd service 
          service: 
            name: "{{ webserver_centos }}"
            state: started 
     ```
## 2 inventory file variables define in inventory 
    ```
    [ubuntu]
    172.31.23.104    
    172.31.26.35  
    [centos]
    172.31.32.56   
    
    [ubuntu:vars]
    package=apache2 


    [webserver]
    [appserver]
    [dbserver]
    [common] 

    [centos:vars]
    package_centos=httpd 


    [nodes]
    172.31.23.104
    172.31.26.35  
    172.31.32.56  package_name=httpd


    [nodes:vars]
    package_name=apache2 
    packages=git
    ``` 

## 3 command line 
   ```
   - hosts: all
     become: yes 
     vars: 
       webserver_centos: httpd
     tasks: 
     - name: install apache2 on centos 
       yum: 
        name: "{{ webserver_centos }}"
        state: present 
     - name: start httpd service 
       service: 
          name: "{{ webserver_centos }}"
          state: started 


   ansible-playbook lamp.yml -i myinventory -e "webserver_centos=nginx" 
   /// nginx will be install on nodes because commandline is more priority than aother places 
  ``` 

## 4 group vars and host vars 
   1. create directories ```mkdir group_vars``` and ```mkdir host_vars``` 
   2. if you want to create group variables go to group_vars directory and create file with group name and inside file you can define number of variables
   3.  if you want to create host variables go to host_vars directory and create file with hostip address name and inside file you can define number of variables  
    ```
    - hosts: all
      become: yes 
      tasks: 
      - name: install package 
        apt: 
          name: "{{ package_name }}"
          state: present 
    ``` 


## 5 variables in Roles 
 

