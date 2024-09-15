provider "aws" {
  region  = "eu-central-1"
  profile = "andrii"
}

# Create a VPC with a primary CIDR block
resource "aws_vpc" "private_vpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "private-vpc"
  }
}

# Associate additional CIDR blocks with the VPC
resource "aws_vpc_ipv4_cidr_block_association" "secondary_1" {
  vpc_id     = aws_vpc.private_vpc.id
  cidr_block = "10.1.0.0/16"
}

resource "aws_vpc_ipv4_cidr_block_association" "secondary_2" {
  vpc_id     = aws_vpc.private_vpc.id
  cidr_block = "10.2.0.0/16"
}
