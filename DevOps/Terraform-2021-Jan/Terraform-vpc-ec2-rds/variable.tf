variable "imageid" {
  type = string
  default = "ami-0ac73f33a1888c64a"
}
variable "instantancetype" {
    type = string 
    default = "t2.micro"
}

variable "keyname" {
    type = string 
    default = "Infra"
}

variable "cidr_vpc" {
    type = string 
    default = "192.168.0.0/16"
}

variable "cidr_sub1" {
    type = string 
    default = "192.168.0.0/24"
}
variable "cidr_sub2" {
    type = string 
    default = "192.168.1.0/24"
}

variable "cidr_sub3" {
    type = string 
    default = "192.168.2.0/24"
}
variable "cidr_sub4" {
    type = string 
    default = "192.168.3.0/24"
}

