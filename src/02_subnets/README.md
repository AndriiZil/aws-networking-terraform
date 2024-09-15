# Subnets

- AWS reserves 5 IPs first 4 and last 1.
- Example CIDR Block is `10.0.0.0/24`
- `10.0.0.0` Network Address
- `10.0.0.1` reserved by AWS for the VPC router
- `10.0.0.2` reserved by AWS for mapping to Amazon provided DNS
- `10.0.0.3` reserved by AWS for future use
- `10.0.0.255` Network Broadcast Address. AWS does not support broadcast in a VPC,
therefore the address is reserved