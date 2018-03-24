variable http_instance_port {
  default = 80
}

variable "azs" {
  type = "list"
}

variable "customer" {}

variable "environment" {}

variable "default_tags" {
  type    = "map"
  default = {}
}

variable "ebs_optimized" {}
variable "ami" {}

variable "disable_api_termination" {
  default = false
}

variable "web_instance_count" {}
variable "web_instance_type" {}
variable "enable_public_access" {
  default = false
}
