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
