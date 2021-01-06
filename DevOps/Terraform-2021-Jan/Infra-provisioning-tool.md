## Infrastraucture as code 
   1. CloudFormation    --> AWS
   2. ARM Template      --> AZure
   3. Deployment Manager --> GCP
   4. Terraform   --> generic and opensource tool  
## Building Blocks of Terraform 
   1. Provider ---> aws , azure , GCP, Openstack (passing Access and Secret key)
   2. Variable ---> avoid the hordcoding 
   3. Resource  ---> eg: VPC , EC2 
   4. Provisioning  ---> execute commands, remote-exec, chef , puppet , file 
   5. OutPuts    --> display outputs eg: vpcid , PublicIP  

## Known 
   1. VPC  --> Console, AWS CLI, CloudFormation, Terraform  
   2. EC2
   3. RDS
   4. IAM  

## Terraform LAB Setup 
   1. AWS Account 
   2. install Terraform in any platform 
        1. install terraform in windows 
           ```
           choco install terraform -y
           ``` 
        2. Install terraform in lunux [Terraform Install](https://learn.hashicorp.com/tutorials/terraform/install-cli)  
   3. Create IAM User in AWS 
   4. Configure aws cli or You can Pass access key and secret key in Terraform file  

## Basci Terraform File   
      1. Create VPC
      2. create InternetGate way
      3. Create Route Tables 
      4. create Subnet
      5. Private Subnet Group (group of subnets)
      6. create Security group 
           1. Webserver ---> inbound open 80(http) , 22(ssh), 443 (https), open from any where
           2. app Server --> inbound:  only access from Webserver 8080, 22 
           3. DB server --> inblound --> open 3306 , only access from appserver 
      7. deploy Ec2 machine in public subnet  
      8. deploy RDS in Private subnet group  