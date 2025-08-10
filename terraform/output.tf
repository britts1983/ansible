output "instance_ids" {
  value = aws_instance.my_ec2[*].id
}

output "public_ips" {
  value = aws_instance.my_ec2[*].public_ip
}