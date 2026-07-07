resource "aws_instance" "web" {

  ami               = var.ami_name
  instance_type     = var.instance_type
  key_name          = var.key_name
  availability_zone = "us-east-1a"

  tags = {
    Name = var.name
  }

  root_block_device {
    volume_size = var.volume
  }
}
