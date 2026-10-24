# Lab 01 — sanity check: confirms credentials and region work without creating anything billable.
data "aws_caller_identity" "current" {}

data "aws_region" "current" {}
