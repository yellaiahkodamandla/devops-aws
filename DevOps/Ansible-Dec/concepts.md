## Topics 
   1. Handlers  
   2. tags --> 5 , 2
   3. Block  --> 
   4. ansible roles 
   5. ansible Tower 
   6. ansible.cfg  -->   
   7. ingnore errors

## Handlers: 
   1. its like task 
   2. write once we can notify manytimes 
   3. command , shell, raw modules are not idempotent, we can make it as idempotent using handlers 
   4. in handler we define only few modules ```command , shell, raw, restart``` 
## create a directory using Command 
- name: create dir 
  command: mkdir /home/ansible/newdir 


## task install package and create directory 
- hosts: all 
  become: yes 
  tasks: 
  - name: install htop 
    package: 
      name: top 
      state: present 
    notify: create directory 
  - name: create directory
    command: mkdir /home/ansible/newdir  
    ignore_errors: yes
  - name: create dir 
    file: 
      path: /home/ansible/newdir
      state: directory 
   handlers: 
   - name: create directory 
     command: mkdir /home/ansible/somedir   

