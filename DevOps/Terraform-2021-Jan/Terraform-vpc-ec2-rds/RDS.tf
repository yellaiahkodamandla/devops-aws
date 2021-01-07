## deploy RDS in Private subnet group 
resource "aws_db_instance" "rds" {
  allocated_storage    = 20
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  name                 = "mydb"
  username             = "testuser"
  password             = "password"
  vpc_security_group_ids = ["${aws_security_group.allow_tls.id}"]
## publicly_accessible = true
  port = 3306 
  ## deletion_protection = true 
  db_subnet_group_name = aws_db_subnet_group.db-subnetgroup.id 

  tags = {
    Name = "RDS-TF"
  }
}