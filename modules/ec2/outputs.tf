output "id" {
  value = "${aws_instance.web.id}"
}

output "ip" {
  value = "${aws_instance.web.public_ip}"
}