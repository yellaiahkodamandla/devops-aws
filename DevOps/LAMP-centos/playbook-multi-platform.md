## when 
   when os family ==  Redhat 
     ``` when: ansible_os_family == "RedHat"```
   when os family == Debian
     ```when:  ansible_os_family == "Debian"```
    ```
    - name: install apache2 on ubuntu 
      apt:
        name: apache2
        state: present
        update_cache: yes
    - name: install httpd on centos 
      yum: 
        name: httpd
        state: present
    ```


## execute task only in ubuntu 18.04 
   ```when: major_release == "18"```
## execute only perticlur  ansible node 
   ```when: ansible_nodename == "ip-172-31-41-132"```
 