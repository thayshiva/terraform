output "instance_ids" {
  value = ["${aws_instance.web.*.id}"]
}

output "instance_ips" {
  value = ["${aws_instance.web.*.private_ip}"]
}
