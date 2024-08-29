resource "aws_instance" "server" {
  ami           = "ami-066784287e358dad1"
  instance_type = "t2.micro"
  lifecycle {
    create_before_destroy = true
  }
}


# resource "aws_iam_user" "user1" {
#   name = "devolopper-2024"
# }