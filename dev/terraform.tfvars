region = "eu-west-1"
profile = "thayz"
environment = "dev"
customer = "VelTech"

default_tags = {
  Customer    = "VelTech"
  Environment = "dev"
  CostCode    = "Test"
}

web_instance_count = 1

web_instance_type = "t2.micro"

app_instance_count = 1

app_instance_type = "t2.micro"
azs = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
