# AWS Networking Terraform

## Technologies
![image](https://img.shields.io/badge/Terraform-7B42BC?style=for-the-badge&logo=terraform&logoColor=white)
![image](https://img.shields.io/badge/Amazon_AWS-FF9900?style=for-the-badge&logo=amazonaws&logoColor=white)

## Resources
- https://www.ipaddressguide.com/cidr

## Private IPs
- `10.0.0.0` - `10.255.255.255` (`10.0.0.0/8`) in big networks
- `172.16.0.0` - `172.31.255.255` (`172.16.0.0/12`) AWS Default VPC in range
- `192.168.0.0` - `192.168.255.255` (`192.168.0.0/16`) Home networks
- All the rest IP in the Internet are Public

```bash
  terraform init
  
  terraform plan
  
  terraform apply
  terraform destroy
  
  terraform apply -auto-approve
  terraform destroy -auto-approve
```