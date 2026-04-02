region = "us-east-1"

vpc_name = "my-vpc"
vpc_cidr = "10.0.0.0/16"

azs = [
  "us-east-1a",
  "us-east-1b",
  "us-east-1c"
]

private_subnets = [
  "10.0.1.0/24",
  "10.0.2.0/24",
  "10.0.3.0/24"
]

public_subnets = [
  "10.0.101.0/24",
  "10.0.102.0/24",
  "10.0.103.0/24"
]

enable_nat_gateway = true
enable_vpn_gateway = false

tags = {
  Terraform   = "true"
  Environment = "dev"
}


##########################secutity group##########################


sg_name        = "my_sg"
sg_description = "Allow TLS inbound traffic"

sg_ingress_rules = [
  {
    from_port = 443
    to_port   = 443
    protocol  = "tcp"
    cidr_ipv4 = "0.0.0.0/0"
  },
  {
    from_port = 80
    to_port   = 80
    protocol  = "tcp"
    cidr_ipv4 = "0.0.0.0/0"
  }
]

sg_egress_rules = [
  {
    protocol  = "-1"
    cidr_ipv4 = "0.0.0.0/0"
  }
]
