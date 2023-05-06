# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

terraform {

 /* 
 cloud {
    workspaces {
      name = "learn-terraform-eks"
    }
  } 
  */

 backend "s3" {
    bucket = "hoitrada-tfstate"
    key    = "terraform.tfstate"
    region = "ap-southeast-1"
    profile = "default"
    encrypt = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.47.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "~> 3.4.3"
    }

    tls = {
      source  = "hashicorp/tls"
      version = "~> 4.0.4"
    }

    cloudinit = {
      source  = "hashicorp/cloudinit"
      version = "~> 2.2.0"
    }
  }

  required_version = "~> 1.3"
}
