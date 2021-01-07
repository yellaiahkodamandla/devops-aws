## Variable 
   1. How to define Variable  
      ```
        variable "imageid" {
            type = string
            default = "ami-0ac73f33a1888c64a"  ## ubunntu 18.04
        }
        variable "instantancetype" {
            type = string 
            default = "t2micro"
        }

        variable "keyname" {
            type = string 
            default = "Infra"
        }
      ```

   2. how to pass variable in command line (Luanch ec2 machine with ubuntu 20.04) and change instance type t2.large and change key name(terraform)
      ```
      terraform apply -var="imageid=ami-07dd19a7900a1f049" -var="instantancetype=t2.large"  -var="keyname=terraform"
      ``` 

   3. you define multiple variable and new values in file. the file name should be tfvars or tfvars.josn  
      1. create file with .tfvars or .tfvars.json 
          1. create file dummy.tfvars.json 
          2. call tfvars.json or .tfvars in command line 
              ```
                terraform apply -var-file="dummy.tfvars.json"
             ```
