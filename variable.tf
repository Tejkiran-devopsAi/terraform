variable "name" {
  description = "This is my EC2 instance name"
  type        = string
  default     = "hiitej"
}

variable "ami_name" {
  description = "Amazon Machine Image (AMI) ID"
  type        = string
  default     = "ami-06067086cf86c58e6"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "key_name" {
  description = "AWS EC2 Key Pair name"
  type        = string
  default     = "javaproject"
}

variable "volume" {
  description = "Root EBS volume size in GB"
  type        = number
  default     = 15
}
