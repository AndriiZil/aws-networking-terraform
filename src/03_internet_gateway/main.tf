provider "aws" {
  region  = "eu-central-1"
  profile = "andrii"
}

# Create a VPC with a single CIDR block
resource "aws_vpc" "private_vpc" {
  cidr_block       = "10.0.0.0/16" # 65,536 Addresses
  instance_tenancy = "default"

  tags = {
    Name = "private-vpc"
  }
}

# Fetch availability zones
data "aws_availability_zones" "available" {}

# Create an Internet Gateway and attach it to the VPC
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.private_vpc.id

  tags = {
    Name = "main-igw"
  }
}
