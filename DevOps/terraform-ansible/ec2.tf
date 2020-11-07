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
  ### install ansible using remote-exec
  ### 1. install ansible
  ### 2. write a playbook and push to github
  ### 3. run playbook
  provisioner "remote-exec" {
    inline = [
      "sudo apt update",
      "sudo apt install software-properties-common",
      "sudo apt-add-repository --yes --update ppa:ansible/ansible",
      "sudo apt-get install ansible -y",
      "git clone https://github.com/ABBANAPURI0445/devops-aws.git",
      "sleep 10m",
      "echo COMPLETED",
      "sudo ansible-playbook devops-aws/DevOps/LAMP/LAMP.yml"
    ]
  }
  tags = {
    Name = "HelloWorld"
  }
   
}
