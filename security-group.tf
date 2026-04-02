module "sg" {
  source = "./modules/security-group"

  name        = var.sg_name
  description = var.sg_description
  vpc_id      = module.vpc.vpc_id

  ingress_rules = var.sg_ingress_rules
  egress_rules  = var.sg_egress_rules

  tags = var.tags
}