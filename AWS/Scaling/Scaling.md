# Scaling
  1. vertical Scaling
  2. Horizontal scaling 
## vertical scaling
   1. increase instance type (hardware size) 
   2. we cant increase/decrease  instance type while running machine
   3. stop machine and change instance type
   4. it require downtime 

## Autoscaling
 
### steps:
 1. create Image (LAMP)
      ![step1](image/../../Image/images/1.png)
      ![step2](image/../../Image/images/2.png)
      ![step3](image/../../Image/images/3.png)
 2. Launch configuration 
     1.  you specify information for the instances such as the ID of the Amazon Machine Image (AMI), the instance type, a key pair, one or more security groups, and a block device mapping. 
     2. steps
     ![step1](images/1.png)
     ![step2](images/2.png)
     ![step3](images/3.png)
     ![step4](images/4.png)
     ![step5](images/5.png)
     ![step6](images/6.png)
     ![step7](images/7.png)
     ![step8](images/8.png)
     ![step9](images/9.png)
 3. create Autoscaling Group
     1. add policies (using CPU , RAM etc Metrics) 
        1. when do you want scale out 
        2. when do you want scale in
     2. define min size and max size 
     3. steps
     ![steps](images/10.png)
     ![steps](images/11.png)
     ![steps](images/12.png)
     ![steps](images/13.png)
     ![steps](images/14.png)
     ![steps](images/15.png)
     ![steps](images/16.png)
     ![steps](images/17.png)
     ![steps](images/18.png)
     ![steps](images/19.png)
     ![steps](images/20.png)
     ![steps](images/21.png)
     ![steps](images/22.png)
     ![steps](images/23.png)
     ![steps](images/24.png)
     ![steps](images/25.png)
      
## stress
   login into machine (Autoscaling group machine) \
   stress is tool \
   we can stress on CPU and RAM artificially 
   ```
   sudo apt-get update
   sudo apt-get install stress -y
   stress
   stress --cpu 8 --io 4 --vm 2 --vm-bytes 128M --timeout 6m
   ```
[AWS ASG Documetation](https://docs.aws.amazon.com/autoscaling/ec2/userguide/setting-up.html)

## termination
   1. delete autoscaling group
   2. delete Launch configuration
   3. delete AMI image 