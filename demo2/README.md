## Overview
This example covers following concepts:
*  Terraform Variables
*  Terraform Outputs
* Terraform Versions
* AWS EC2 userdata

## How to run this example?

1. Fill values in `env/example.tfvars`
2. Set environment variable, `export AWS_PROFILE=<your-aws-profile>`
3. Run `terraform init`
4. Run `terraform plan --var-file=env/example.tfvars`
5. If `plan` looks good then run, `terraform apply --var-file=env/example.tfvars`
6. To destroy infrastructure, run `terraform destroy -var-file=env/example.tfvars`
