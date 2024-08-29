provider "aws" {
  region = "us-east-1"
  alias  = "us1"
}

provider "aws" {
  region = "us-east-2"
  alias  = "us2"
}


resource "aws_instance" "name" {
  provider      = aws.us1
  key_name      = aws_key_pair.aws_key.key_name
  ami           = "ami-0c8e23f950c7725b9"
  instance_type = "t2.micro"

}

resource "null_resource" "n1" {

  connection {
    type        = "ssh"
    port        = 22
    user        = "ec2-user"
    host        = aws_instance.name.public_ip
    private_key = file(local_file.ssh_key.filename)
  }

  provisioner "local-exec" {
    command = "touch terraform.txt"
  }
  provisioner "file" {
    source      = "terraform.txt"
    destination = "/tmp/terraform.txt"

  }

  provisioner "remote-exec" {
    inline = [
      "touch idriss",
    ]
  }
  depends_on = [aws_instance.name, local_file.ssh_key]
}