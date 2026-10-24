terraform {
  required_version = ">= 1.10.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }

  # Uncomment after creating the org + workspace in HCP Terraform (CLI-driven workflow),
  # then run `terraform login` and `terraform init`.
  # cloud {
  #   organization = "<your-hcp-org>"
  #   workspaces {
  #     name = "terraform-sre-lab-dev"
  #   }
  # }
}
