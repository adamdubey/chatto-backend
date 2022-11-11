terraform {
  backend "s3" {
    bucket  = "chatto-app-terraform-state"
    key     = "develop/chatto.tfstate"
    region  = "us-east-1" 
    encrypt = true
  }
}

locals {
  prefix = "${var.prefix}-${terraform.workspace}"

  common_tags = {
    Environment = terraform.workspace
    Project     = var.project
    ManagedBy   = "Terraform"
    Owner       = "Adam Dubey"
  }
}
