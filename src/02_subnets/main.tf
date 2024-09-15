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

# Create Subnet first in the first AZ
resource "aws_subnet" "subnet_1" {
  vpc_id            = aws_vpc.private_vpc.id
  cidr_block        = "10.0.1.0/24"                                  # 256 IPs
  availability_zone = data.aws_availability_zones.available.names[0] # AZ A

  tags = {
    Name = "PublicSubnetA"
  }
}

# Create Subnet second in the second AZ
resource "aws_subnet" "subnet_2" {
  vpc_id            = aws_vpc.private_vpc.id
  cidr_block        = "10.0.2.0/24"                                  # 256 IPs
  availability_zone = data.aws_availability_zones.available.names[1] # AZ B

  tags = {
    Name = "PublicSubnetB"
  }
}

# Create Subnet 3 in the third AZ
resource "aws_subnet" "subnet_3" {
  vpc_id            = aws_vpc.private_vpc.id
  cidr_block        = "10.0.16.0/20"                                 # 4,096 IPs
  availability_zone = data.aws_availability_zones.available.names[0] # AZ A

  tags = {
    Name = "PrivateSubnetA"
  }
}

# Create Subnet 4 in the third AZ
resource "aws_subnet" "subnet_4" {
  vpc_id            = aws_vpc.private_vpc.id
  cidr_block        = "10.0.32.0/20"                                 # 4,096 IPs
  availability_zone = data.aws_availability_zones.available.names[1] # AZ B

  tags = {
    Name = "PrivateSubnetB"
  }
}
