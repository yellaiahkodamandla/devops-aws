 
## Vpc 
resource "aws_vpc" "network" {
  cidr_block       = var.cidr_vpc
  instance_tenancy = "default"
  enable_dns_hostnames = true 

  tags = {
    Name = "VPC-TF"
  }
}
## IGW 
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.network.id

  tags = {
    Name = "IGW-TF"
  }
}
### create Public Route tables 
resource "aws_route_table" "PublicRT" {
  vpc_id = aws_vpc.network.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }


  tags = {
    Name = "PublicRT"
  }
}

##### Private Route table 
resource "aws_route_table" "PrivateRT" {
  vpc_id = aws_vpc.network.id

  tags = {
    Name = "PrivateRT"
  }
} 
### create 4 Subnets 
resource "aws_subnet" "subnet-1" {
  vpc_id     = aws_vpc.network.id
  cidr_block = var.cidr_sub1
  availability_zone = "us-west-2a"  

  tags = {
    Name = "Publicsubnet-1"
  }
}
resource "aws_subnet" "subnet-2" {
  vpc_id     = aws_vpc.network.id
  cidr_block = var.cidr_sub2
  availability_zone = "us-west-2b"

  tags = {
    Name = "Publicsubnet-2"
  }
}
resource "aws_subnet" "subnet-3" {
  vpc_id     = aws_vpc.network.id
  cidr_block = var.cidr_sub3
  availability_zone = "us-west-2a"

  tags = {
    Name = "PrivateSubnet-1"
  }
}
resource "aws_subnet" "subnet-4" {
  vpc_id     = aws_vpc.network.id
  cidr_block = var.cidr_sub4
  availability_zone = "us-west-2b"

  tags = {
    Name = "PrivateSubnet-2"
  }
}


### sub-1 and sub-2  associate to Public RT 
resource "aws_route_table_association" "sub-1-ascc-PRT" {
  subnet_id      = aws_subnet.subnet-1.id
  route_table_id = aws_route_table.PublicRT.id
}

resource "aws_route_table_association" "sub-2-ascc-PRT" {
  subnet_id      = aws_subnet.subnet-2.id
  route_table_id = aws_route_table.PublicRT.id
}

### sub-3 and sub-4 associate to Private RT 
  
resource "aws_route_table_association" "sub-3-ascc-PrivateRT" {
  subnet_id      = aws_subnet.subnet-3.id
  route_table_id = aws_route_table.PrivateRT.id
}
resource "aws_route_table_association" "sub-4-ascc-PrivateRT" {
  subnet_id      = aws_subnet.subnet-4.id
  route_table_id = aws_route_table.PrivateRT.id
} 
#### security group 
resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"
  vpc_id      = aws_vpc.network.id

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


