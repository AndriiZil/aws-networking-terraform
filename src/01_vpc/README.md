# Virtual Private Network

## Private IPs
- `10.0.0.0` - `10.255.255.255` (`10.0.0.0/8`) in big networks
- `172.16.0.0` - `172.31.255.255` (`172.16.0.0/12`) AWS Default VPC in range
- `192.168.0.0` - `192.168.255.255` (`192.168.0.0/16`) Home networks
- All the rest IP in the Internet are Public

- max 5 per region
- max CIDR per VPC is 5 for each CIDR
- min size is /28 (16 IP addresses)
- max size is /16 (65 536 IP addresses)

## Because VPC is private, only the Private IPv4 ranges are allowed:
- `10.0.0.0` - `10.255.255.255` (`10.0.0.0/8`)
- `172.16.0.0` - `172.31.255.255` (`172.16.0.0/12`)
- `192.168.0.0` - `192.168.255.255` (`192.168.0.0/16`)