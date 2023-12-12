output "this" {
  value = aws_api_gateway_deployment.this
}

output "stages" {
  value = aws_api_gateway_stage.this
}

output "stage_invoke_urls" {
  value = { for k, v in aws_api_gateway_stage.this : k => v.invoke_url }
}