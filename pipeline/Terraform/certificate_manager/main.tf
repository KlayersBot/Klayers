resource "aws_acm_certificate" "cert" {
  domain_name       = var.api_domain_name
  validation_method = "DNS"

  tags = {
    Environment = var.workspace_name
  }

  lifecycle {
    create_before_destroy = true
  }
}

