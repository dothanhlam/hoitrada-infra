# hoitrada-infra
the terraform for HOITRADA

if you create the infra for the first time, run the following modules in order:
1. remote-state

This will init the s3 bucket for terraform state
2. eks-cluster