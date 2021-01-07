####### deploy EC2 machine for appserver 

resource "aws_instance" "app" {
  ami           = var.imageid
  instance_type = var.instantancetype
  key_name = var.keyname
  subnet_id = aws_subnet.subnet-2.id 
  associate_public_ip_address = true 
  vpc_security_group_ids = ["${aws_security_group.allow_tls.id}"]
   connection {
    type     = "ssh"
    user     = "ubuntu"
    private_key = file("Infra.pem")
    host     = aws_instance.app.public_dns 
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
    Name = "Appserver"
  }
}