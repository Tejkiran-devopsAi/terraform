provider "aws" {
region = "us-east-1"
}
resource "aws_instance" "web" {
tags = {
Name = "terraform-server"
environment = "dev"
client = "jio"
}
ami = "ami-06067086cf86c58e6"
instance_type = "t3.micro"
key_name = "javaproject"
availability_zone = "us-east-1a"
}
