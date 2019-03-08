# Terraform AWS provider
# https://www.terraform.io/docs/providers/aws/
provider "aws" {
  profile = "demo"
  region  = "us-west-2"
}

# Create AWS EC2 instance
resource "aws_instance" "my_instance" {
  ami           = "ami-095cd038eef3e5074"
  instance_type = "t2.micro"
  subnet_id     = "my-subnet-id-123"      # Update this value with your subnet-id
}
