## AWS CLI Setup
    1. install aws cli 
        ```
        choco install awscli -y
        ``` 
    2. create IAM User in aws
    3. configure awscli , run below command on powershell
       ```
       aws configure
       ``` 
    [awscli-setup](https://github.com/ABBANAPURI0445/devops-aws/blob/master/AWS/AWS%20CLI/aws-clI.md) 

## create RDS using awscli  
  1. Stop db instance 
     ```
     aws rds stop-db-instance --db-instance-identifier mysqldec
     ```

## terminate database 
   ```
    aws rds delete-db-instance --db-instance-identifier mysqldec --no-skip-final-snapshot   --final-db-snapshot-identifier  mysqldec-final-snap 
   ```
   

  ```
  aws rds create-db-instance --db-name "customer" --db-instance-identifier "mysql-customer" --allocated-storage 20 --db-instance-class db.t2.micro --engine mysql --master-username "customer" --master-user-password password --availability-zone us-west-2a --port 3306  --engine-version 5.7.31
  ```  

## task 
  1. create vpc with one public subnet and two private subnet (different az)
  2. create db subnet group 
  3. create database  

## 
aws rds create-db-instance-read-replica --db-instance-identifier mysql-customer-repl --source-db-instance-identifier mysql-customer