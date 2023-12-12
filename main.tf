resource "aws_api_gateway_deployment" "this" {
  rest_api_id = var.rest_api_id
  description = var.description
  triggers    = var.triggers
  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_api_gateway_stage" "this" {
  for_each      = var.stages
  rest_api_id   = var.rest_api_id
  deployment_id = aws_api_gateway_deployment.this.id
  stage_name    = each.key
  description   = each.value.description
}