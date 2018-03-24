resource "aws_instance" "app" {
  count                   = "${var.app_instance_count}"
  ami                     = "${var.ami}"
  instance_type           = "${var.app_instance_type}"
  disable_api_termination = "${var.disable_api_termination}"
  ebs_optimized           = "${var.ebs_optimized}"

  tags = "${merge(
    var.default_tags,
    map("Name", "I${var.customer}${var.environment}App${count.index}")
  )}"
}
