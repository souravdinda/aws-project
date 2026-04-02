variable "name" {
  type = string
}

variable "description" {
  type = string
}

variable "vpc_id" {
  type = string
}

variable "ingress_rules" {
  description = "List of ingress rules"
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_ipv4   = optional(string)
    cidr_ipv6   = optional(string)
  }))
  default = []
}

variable "egress_rules" {
  description = "List of egress rules"
  type = list(object({
    protocol  = string
    cidr_ipv4 = optional(string)
    cidr_ipv6 = optional(string)
  }))
  default = []
}

variable "tags" {
  type = map(string)
}