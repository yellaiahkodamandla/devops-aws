resource "aws_instance" "web" {
  ami           = "ami-07a29e5e945228fa1"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}