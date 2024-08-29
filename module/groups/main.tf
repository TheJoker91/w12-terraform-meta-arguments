# terraform-iam-group-name
resource "aws_iam_group" "dev-team" {
  name = var.group_name
}
