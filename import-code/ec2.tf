resource "aws_instance" "web2" {
  ami                         = "ami-02c21308fed24a8ab"
  associate_public_ip_address = true
  availability_zone           = "us-east-1e"
  instance_type               = "t2.medium"
  ipv6_address_count          = 0
  key_name                    = "week2"
  monitoring                  = false
  security_groups             = ["launch-wizard-2"]
  subnet_id                   = "subnet-0519380261f608309"
  tags = {
    Name = "web2"
  }
}
