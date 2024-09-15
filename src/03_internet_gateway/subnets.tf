# Create Subnet first in the first AZ
resource "aws_subnet" "subnet_1" {
  vpc_id                  = aws_vpc.private_vpc.id
  cidr_block              = "10.0.1.0/24"                                  # 256 IPs
  availability_zone       = data.aws_availability_zones.available.names[0] # AZ A
  map_public_ip_on_launch = true                                           # Enable auto-assign public IPv4 address

  tags = {
    Name = "PublicSubnetA"
  }
}

# Create Subnet second in the second AZ
resource "aws_subnet" "subnet_2" {
  vpc_id                  = aws_vpc.private_vpc.id
  cidr_block              = "10.0.2.0/24"                                  # 256 IPs
  availability_zone       = data.aws_availability_zones.available.names[1] # AZ B
  map_public_ip_on_launch = true                                           # Enable auto-assign public IPv4 address

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
