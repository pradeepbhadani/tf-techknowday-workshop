# tf-techknowday-workshop
TechKnowday Terraform workshop files

## Terraform Installation
1. Download Terraform from terroform.io

    For Mac,
      ```
      wget https://releases.hashicorp.com/terraform/0.11.11/terraform_0.11.11_darwin_amd64.zip -O /tmp/terraform.zip
      ```

      For Linux,
      ```
      wget https://releases.hashicorp.com/terraform/0.11.11/terraform_0.11.11_linux_amd64.zip -O /tmp/terraform.zip
      ```

2. Extract to a directory
    ```
    mkdir -p mkdir -p ${HOME}/terraform
    unzip /tmp/terraform.zip -d ${HOME}/terraform/
    ```

3. Set Classpath
    ```
    echo 'export PATH=${HOME}/terraform:${PATH}' >> ~/.bashrc
    source ~/.bashrc
    ```


## Configure AWS
Make sure to configure AWS credentials so that terraform can create/manage AWS resources.


Create/Open `~/.aws/credentials` file and make sure it has access key and secret access key
```
[demo]
region = us-west-2
output = json
aws_access_key_id = <YOUR AWS ACCESS KEY ID>
aws_secret_access_key = <YOUR AWS SECRET ACCESS KEY ID>
```

## Run Terraform
**Running these(Terraform) examples may incur charge in AWS account.**

1. Navigate to code directory (let's say `demo2/`)
2. Put one `tfvars` file under `env` directory for each environment. (Refer `example.tfvars` file)
2. Run `terraform init` to initialize terraform
3. Run `terraform plan -var-file=env/demo.tfvars` to see the plan (Let's say `demo.tfvars` is for `demo` environment)
4. If happy with the plan, run `terraform apply -var-file=env/demo.tfvars`
5. If want to **cleanup**(or **destroy** all resources created by this example terraform code), run `terraform destroy -var-file=env/demo.tfvars`
