resource "aws_lightsail_instance" "server" {
  name              = var.instance_name
  availability_zone = var.az
  blueprint_id      = var.b_print
  bundle_id         = var.bundle_id
  key_pair_name = var.key-name
  tags ={
    Team = var.team
    env  = var.env
    create_by = "terraform"
  }
}