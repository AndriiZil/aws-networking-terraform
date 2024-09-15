# Create a security group allowing inbound SSH and HTTP access
resource "aws_security_group" "ec2_sg" {
  vpc_id = aws_vpc.private_vpc.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Allow SSH access from anywhere
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Allow HTTP access from anywhere
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"] # Allow all outbound traffic
  }

  tags = {
    Name = "ec2-security-group"
  }
}

# Create an EC2 instance in Subnet 1
resource "aws_instance" "ec2_instance" {
  ami                         = "ami-071878317c449ae48" # Amazon Linux
  instance_type               = "t2.nano"
  user_data                   = file("server-script.sh")
  subnet_id                   = aws_subnet.subnet_1.id
  vpc_security_group_ids      = [aws_security_group.ec2_sg.id]
  associate_public_ip_address = true # Ensure instance gets a public IP
  depends_on = [
    aws_security_group.ec2_sg
  ]

  tags = {
    Name = "EC2-Web-Server"
  }
}
