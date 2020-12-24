## Varibale  
```
"{{ packagename }}"
```
  1. playbook 
  2. inventory file 
  3. group vars 
  4. hosts vars 
  5. ansible roles 
  6. command line  


## variables define in inventory 
[ubuntu]
172.31.23.104 
172.31.26.35  
[centos]
172.31.32.56   

[ubuntu:vars]
package=apache2

[centos:vars]
package_centos=httpd 


[nodes]
172.31.23.104
172.31.26.35  package=tree
172.31.32.56  package_name=httpd


[nodes:vars]
package_name=apache2 
packages=git

