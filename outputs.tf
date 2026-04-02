# output "api_url" {
#   description = "Base URL of the Hello World API"
#   value       = aws_apigatewayv2_stage.default.invoke_url
# }

# output "lambda_function_name" {
#   description = "Name of the deployed Lambda function"
#   value       = aws_lambda_function.hello_world.function_name
# }

# output "alb_url" {
#   description = "HTTP URL of the ALB (FastAPI frontend)"
#   value       = "http://${aws_lb.hello_world.dns_name}"
# }

output "vpc_id" {
  value = module.vpc.vpc_id
}

output "private_subnets" {
  value = module.vpc.private_subnets
}

output "public_subnets" {
  value = module.vpc.public_subnets
}

output "nat_ips" {
  value = module.vpc.nat_ips
}


