output "account_id" {
  description = "AWS account Terraform is authenticated against."
  value       = data.aws_caller_identity.current.account_id
}

output "region" {
  description = "AWS region in use."
  value       = data.aws_region.current.region
}
