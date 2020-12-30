## topics 
   1. ignore_errors: 
       1. create two directories ```mkdir test1 and test2``` 
           ```
           - name: create tow directories 
             file: 
               path: /home/ansible/"{{ item }}" 
               state: directory 
             loop: 
              - test1
              - test2 
           ``` 
   2. lineinfile and replace  , content(copy) 
   3. roles ---> pending 
   4. gather_facts 
   5. ansible tower (UI) 