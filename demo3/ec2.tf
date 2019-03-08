resource "aws_instance" "my_instance" {
  ami                    = "${data.aws_ami.amazon_linux_2_ami.id}"
  instance_type          = "${var.instance_type}"
  subnet_id              = "${data.aws_subnet.subnet_a.id}"
  key_name               = "${var.keypair}"
  tags                   = "${var.tags}"
  vpc_security_group_ids = ["${data.aws_security_group.workshop_sg.id}","${data.aws_security_group.default_sg.id}"]
}
