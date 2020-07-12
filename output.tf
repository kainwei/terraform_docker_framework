output "EC2_IP:" {
  value=module.ec2.ip
}
output "EC2_LOG_DIR:" {
  value=module.ec2.ip + "/log/"
}

output "ELB_DNS_NAME:" {
  value=module.elb.dns_name
}

output "ELB_LOG_DIR:" {
  value=module.elb.dns_name + "/log/"
}