module "aws_lightsail_server" {
  source        = "../lightsail"
  instance_name = "Qa-Server"
  env           = "qa"
  team          = "qa"
  az            = "us-east-1a"
  key-name      = "week2.pem"
  b_print       = "amazon_linux_2023"
  bundle_id     = "small_1_0"

}