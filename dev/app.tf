module "app" {
  source = "../modules/app/"

  customer     = "${var.customer}"
  environment  = "${var.environment}"
  default_tags = "${var.default_tags}"

  azs = "${var.azs}"
  ami = "${data.aws_ami.ubuntu.id}"

  app_instance_count = "${var.app_instance_count}"
  app_instance_type  = "${var.app_instance_type}"
  ebs_optimized      = false

  disable_api_termination = false
  enable_public_access    = false 
}

output "app-ips" {
  value = "${module.app.instance_ips}"
}

output "app-instance-ids" {
  value = "${module.app.instance_ids}"
}

