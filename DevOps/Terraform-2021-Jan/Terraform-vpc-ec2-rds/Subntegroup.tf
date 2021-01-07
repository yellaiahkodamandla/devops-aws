## DB Subnet group is combination of two or more subnets  
resource "aws_db_subnet_group" "db-subnetgroup" {
  name       = "db-subnet"
  subnet_ids = [aws_subnet.subnet-3.id, aws_subnet.subnet-4.id]
  description = "db subnet group for RDS"

  tags = {
    Name = "DB-subnet-group-tf"
  }
} 