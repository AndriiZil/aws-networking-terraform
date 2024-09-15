
output "VPC_ID" {
  value = aws_vpc.private_vpc.id
}

output "VPC_PRIVATE_CIDR" {
  value = aws_vpc.private_vpc.cidr_block
}

output "SECONDARY_CIDR" {
  value = aws_vpc_ipv4_cidr_block_association.secondary_1.cidr_block
}

output "SECONDARY_CIDR_2" {
  value = aws_vpc_ipv4_cidr_block_association.secondary_2.cidr_block
}
