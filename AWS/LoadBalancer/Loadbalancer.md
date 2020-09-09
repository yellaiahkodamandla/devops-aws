## LAB Setup 
   1. create ASG 
      1. create image (AMI)
      2.  create Launch configuration 
      3. create ASG 
         ```
          min = 2
          max = 10 
          policies 
            scale-out: cpu>= 75% add 1 machine
            scale-in:  cpu<= 30% remove 1machine  
         ```
   2. Load balancer 
      1. create Network Load balancer  
   3. add ELB in ASG 
      1. goto ASG 
      2. click on actions 
      3. click on edit
      4. add target group 
      5. save 