resource "aws_instance" "my_instance" {
  ami                    = "${var.aws_ami_id}"
  instance_type          = "${var.instance_type}"
  subnet_id              = "${var.subnet_id}"
  key_name               = "${var.keypair}"
  tags                   = "${var.tags}"
  vpc_security_group_ids = "${var.sg}"

  user_data = <<EOF
#!/bin/bash
yum update -y
yum install httpd -y
echo "Welcome to my EC2 instance created by Terraform !" >> /var/www/html/index.html
service httpd start
chkconfig httpd on
EOF
}
