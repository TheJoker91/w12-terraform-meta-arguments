output "public_ip" {
  value = aws_instance.server2.public_ip
}

output "private_ip" {
  value = aws_instance.server2.private_ip
}