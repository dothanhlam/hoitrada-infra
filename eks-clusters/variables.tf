# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

variable "region" {
  description = "AWS region"
  type        = string
  default     = "ap-southeast-1"
}

variable "org"  {
  description = "the company that owns this resource"
  type        = string
  default     = "hoitrada"
}