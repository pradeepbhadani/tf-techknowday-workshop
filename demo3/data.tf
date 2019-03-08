data "aws_security_group" "workshop_sg" {
  filter {
    name   = "group-name"
    values = ["workshop-demo"]     # update with SG group-name
  }
}

data "aws_security_group" "default_sg" {
  filter {
    name   = "group-name"
    values = ["default"]         # update with SG group-name
  }
}

data "aws_subnet" "subnet_a" {
  filter {
    name   = "tag:Name"
    values = ["subnet_A"]       # update with Subnet Name
  }
}

data "aws_ami" "amazon_linux_2_ami" {
 most_recent = true
 owners = ["amazon"]

 filter {
   name   = "name"
   values = ["amzn2-ami-hvm*"]
 }
}
