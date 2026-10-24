provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Project     = "terraform-sre-lab"
      Environment = var.environment
      ManagedBy   = "terraform"
    }
  }
}
