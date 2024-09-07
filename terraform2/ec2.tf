resource "aws_instance" "server2" {
  ami           = var.ami
  instance_type = var.instance_type
  tags = {
    Name = "terraform-server"
  }
}