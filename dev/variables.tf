variable "profile" {}

variable "region" {}

variable "azs" {
  type = "list"
}

variable "customer" {}

variable "environment" {}

variable "default_tags" {
  type    = "map"
  default = {}
}

variable "web_instance_type" {}

variable "app_instance_type" {}

variable "web_instance_count" {}

variable "app_instance_count" {}
