module "ec2-server" {
  source        = "../"
  ami           = "ami-0a5c3558529277641"
  region        = "us-east-1"
  profile_name  = "default"
  instance_type = "t2.micro"
}