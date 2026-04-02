# variable "aws_region" {
#   description = "AWS region to deploy into"
#   type        = string
#   default     = "us-east-1"
# }


variable "region" {
  type = string
}

variable "vpc_name" {
  type = string
}

variable "vpc_cidr" {
  type = string
}

variable "azs" {
  type = list(string)
}

variable "private_subnets" {
  type = list(string)
}

variable "public_subnets" {
  type = list(string)
}

variable "enable_nat_gateway" {
  type = bool
}

variable "enable_vpn_gateway" {
  type = bool
}

variable "tags" {
  type = map(string)
}


#####################Sgroup Variables#####################
variable "sg_name" {
  type = string
}

variable "sg_description" {
  type = string
}

variable "sg_ingress_rules" {
  type = list(object({
    from_port = number
    to_port   = number
    protocol  = string
    cidr_ipv4 = optional(string)
    cidr_ipv6 = optional(string)
  }))
}

variable "sg_egress_rules" {
  type = list(object({
    protocol  = string
    cidr_ipv4 = optional(string)
    cidr_ipv6 = optional(string)
  }))
}