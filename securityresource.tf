resource "aws_instance" "tej" {
  ami                    = "ami-06067086cf86c58e6"
  instance_type          = "t3.micro"
  key_name               = "javaproject"
  vpc_security_group_ids = [aws_security_group.web.id]
  tags = {
    Name = "tejkiran"
  }
  root_block_device {
    volume_size = 15
  }
}
