output "VPC_ID" {
  value = aws_vpc.private_vpc.id
}

output "SUBNET_1_ID" {
  value = aws_subnet.subnet_1.id
}

output "SUBNET_2_ID" {
  value = aws_subnet.subnet_2.id
}

output "SUBNET_3_ID" {
  value = aws_subnet.subnet_3.id
}

output "IGW" {
  value = aws_internet_gateway.igw.id
}

output "EC_PUBLIC_IP" {
  value = aws_instance.ec2_instance.public_ip
}
