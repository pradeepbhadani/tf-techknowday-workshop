## Overview
This example covers following concepts:
*  Terraform Data Sources
*  Terraform Remote State

## How to run this example?

1. Fill values in `env/example.tfvars`
2. Update `backend.tf` with S3 bucket details
3. Update `data.tf` to have specific names in `values` field
4. Set environment variable, `export AWS_PROFILE=<your-aws-profile>`
5. Run `terraform init`
6. Run `terraform plan --var-file=env/example.tfvars`
7. If `plan` looks good then run, `terraform apply --var-file=env/example.tfvars`
8. To destroy infrastructure, run `terraform destroy -var-file=env/example.tfvars`
