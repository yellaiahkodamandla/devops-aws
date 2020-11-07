variable "vpccidr" {
  type = string
  default = "192.168.0.0/16"
}
variable "pubsubnetcidr" {
  type = string
  default = "192.168.0.0/24"
}
variable "privsubnetcidr" {
  type = string
  default = "192.168.1.0/24"
}
variable "pubaz" {
  type = string
  default = "us-west-2a"
}
variable "privaz" {
  type = string
  default = "us-west-2b"
}
variable "amiid" {
    type = string 
    default = "ami-07a29e5e945228fa1" 
}
variable "instancetype" {
    type = string 
}
variable "keypair" {
    type = string
    default = "vpc-key"
}
