####### provider 
 provider "aws" {
  region     = "us-west-2"
}
####### vpc 
resource "aws_vpc" "vpctf" {
  cidr_block = var.cidr
  enable_dns_hostnames = true 
  tags = {
    Name = "VPCTF"
  }
}
###### create IGW and attach to vpc 
resource "aws_internet_gateway" "igwtf" {
  vpc_id = aws_vpc.vpctf.id 
  tags = {
    Name = "IGWTF"
  }
}
####### create Route table and routed to igw 
resource "aws_route_table" "pubRT" {
  vpc_id = aws_vpc.vpctf.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igwtf.id
  }
  tags = {
    Name = "PublicRT"
  }
}
###### private RT
resource "aws_route_table" "priRT" {
  vpc_id = aws_vpc.vpctf.id
  tags = {
    Name = "PrivateRT"
  }
}
##### create public subnet
######## create subnet
resource "aws_subnet" "pubsubnet" {
  vpc_id     = aws_vpc.vpctf.id
  cidr_block = "192.168.0.0/24"
  availability_zone = "us-west-2a"
  tags = {
    Name = "Publicsubnet"
  }
}
######## associate to Public RT 
resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.pubsubnet.id
  route_table_id = aws_route_table.pubRT.id
}
#### create private subnet 
####### create subnet

resource "aws_subnet" "prisubnet" {
  vpc_id     = aws_vpc.vpctf.id
  cidr_block = "192.168.1.0/24"
  availability_zone = "us-west-2b"
  tags = {
    Name = "Privatesubnet"
  }
}
######### associte to Private RT
resource "aws_route_table_association" "b" {
  subnet_id      = aws_subnet.prisubnet.id
  route_table_id = aws_route_table.priRT.id
}
##### security group 
resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"
  vpc_id      = aws_vpc.vpctf.id

  ingress {
    description = "TLS from VPC"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}
###### launch EC2 machine in public subnet 
resource "aws_instance" "web" {
  ami = "ami-07a29e5e945228fa1"
  instance_type  = "t2.micro"
  key_name = "vpc-key"
  vpc_security_group_ids = ["${aws_security_group.allow_tls.id}"]
  subnet_id = aws_subnet.pubsubnet.id 
  associate_public_ip_address = true 
#### connect ec2 machine
connection {
    type     = "ssh"
    user     = "ubuntu"
    private_key = file("vpc-key.pem")
    host     = aws_instance.web.public_ip
  } 
  provisioner "remote-exec" {
    inline = [
      "sudo apt-get update",
      "sudo apt --fix-missing update",
      "sudo apt install -f",
      "sleep 5",
      "sudo apt-get install tomcat8 -y"
    ]
  }
  tags = {
    Name = "HelloWorld"
  }
   
}
#### outputs 
output "vpcid" {
  value = aws_vpc.vpctf.id 
}
output "PubluRT" {
  value = aws_route_table.pubRT.id  
}
output "PivateRT" {
  value = aws_route_table.priRT.id
}
output "publicsubnet" {
  value =  aws_subnet.pubsubnet.id
}
output "privatesubnet" {
  value =  aws_subnet.prisubnet.id
}
output "igw" {
  value =  aws_internet_gateway.igwtf.id
}
output "publicip" {
  value =  aws_instance.web.public_ip
}
