## Topics 
   1. Lab setup --> excahnge ssh keys 22 , agent less, less secure compare to chef
   2. module 
   3. playbook 
   4. yml 
   5. file 
   6. copy 
   7. template 
   8. idempoent 
   9. non idempotent module -- raw, shell , command 
   10. handlers 
   11. tags 
   12. variables 
         1. playbook var
         2. inv var
         3. host and group vars 
         4. commandline 
         5. roles 
   13. error handling 
   14. block 
   15. lineinfile, replce, copy conent 
   16. condtions --> when 
   17. loop , with_items, array 
   18. roles 
   19. cloud modules --> ec2 , s3 (python boto3 sdk)
   20. db modules ---> database , Mysql 
   21. n/w modules 
   22. ansible tower UI 
   23. ad-hoc commands 
   24. include playbook and include vars 


sudo apt update
sudo apt install software-properties-common
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt install ansible -y
