terraform {
  backend "s3" {
    bucket    = "tejkiran-backend-123"
    key       = "prod/terraform.tfstate"
    region    = "us-east-1"
    use_lockfile = true
  }
}
