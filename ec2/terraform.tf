
terraform {
  backend "s3" {
    bucket  = "hoitrada-tfstate"
    key     = "terraform.tfstate"
    region  = "ap-southeast-1"
    profile = "default"
    encrypt = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.47.0"
    }
  }
  required_version = "~> 1.3"
}
