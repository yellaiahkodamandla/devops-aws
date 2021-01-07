output "webIP" {
  value       = aws_instance.web.public_ip 
}

output "webpublicDNS" {
  value       = aws_instance.web.public_dns  
}

output "apppublicIp" {
  value       = aws_instance.app.public_ip 
}

output "apppublicDNS" {
  value       = aws_instance.app.public_dns  
}

output "webinstanceID" {
  value       = aws_instance.web.id 
}

output "appinstanceID" {
  value       = aws_instance.app.id 
}

output "vpcid" {
  value       = aws_vpc.network.id ## resourcename.logicalname.attribute 
                                   ## aws_vpc.network.id 
}

output "arn" {
  value       = aws_vpc.network.arn 
}  






