module "web" {
  source = "../modules/web/"

  customer     = "${var.customer}"
  environment  = "${var.environment}"
  default_tags = "${var.default_tags}"

  azs = "${var.azs}"
  ami = "${data.aws_ami.ubuntu.id}"

  web_instance_count = "${var.web_instance_count}"
  web_instance_type  = "${var.web_instance_type}"
  ebs_optimized      = false

  disable_api_termination = false
  enable_public_access    = true
}

output "web-ips" {
  value = "${module.web.instance_ips}"
}

output "web-instance-ids" {
  value = "${module.web.instance_ids}"
}

