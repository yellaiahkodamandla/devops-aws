## VPC assignment 
   1. create vpc
   2. create IGW and attach vpc
   3. create Route table 
      1. Public Route table: RT is routed to IGW
      2. Private Route table: RT is not routed IGW 
   4. create subnets 
      1. public subnet: subnet which is associate to public RT
      2. private subnet: subnet which is associate to Private RT
   5. create security group (grant access to every one)
   6. launch EC2 machine in public and private subnet (skip)
   * please follow the document [click here](https://github.com/ABBANAPURI0445/devops-aws/blob/master/AWS/Networking/VPC.md)
   ![vpc](images/vpc.png)


