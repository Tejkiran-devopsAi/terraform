resource "aws_instance" "web" {
  for_each = var.flm

  ami           = each.value.ami
  instance_type = each.value.instance_type
  key_name      = each.value.key_name

  tags = {
    Name = each.value.name
  }

  root_block_device {
    volume_size = each.value.volume
  }
}

variable "flm" {
  type = map(object({
    name          = string
    ami           = string
    instance_type = string
    key_name      = string
    volume        = number
  }))

  default = {
    web = {
      name          = "tej"
      ami           = "ami-06067086cf86c58e6"
      instance_type = "t3.micro"
      key_name      = "javaproject"
      volume        = 13
    }

    app = {
      name          = "kiran"
      ami           = "ami-06067086cf86c58e6"
      instance_type = "t3.micro"
      key_name      = "javaproject"
      volume        = 13
    }
       app = {
      name          = "mass"
      ami           = "ami-06067086cf86c58e6"
      instance_type = "t3.micro"
      key_name      = "javaproject"
      volume        = 13
    }
  }
}
