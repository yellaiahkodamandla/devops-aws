###### launch EC2 machine in public subnet 
resource "aws_instance" "web" {
  ami = var.amiid 
  instance_type  = var.instancetype
  key_name = var.keypair
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