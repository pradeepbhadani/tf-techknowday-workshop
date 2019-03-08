## Overview
This example covers following concepts:
*  Terraform Module
*  Terraform locals

## How to run this example?

1. Fill values in `env/example.tfvars`
2. Update `backend.tf` with S3 bucket details
3. Set environment variable, `export AWS_PROFILE=<your-aws-profile>`
4. Run `terraform init`
5. Run `terraform plan --var-file=env/example.tfvars`
6. If `plan` looks good then run, `terraform apply --var-file=env/example.tfvars`
7. To destroy infrastructure, run `terraform destroy -var-file=env/example.tfvars`
