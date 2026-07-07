resource "aws_s3_bucket" "mybucket" {
  bucket = "tejkiran-backend-123"
}

resource "aws_s3_bucket_versioning" "myversioning" {
  bucket = aws_s3_bucket.mybucket.id
  versioning_configuration {
    status = "Enabled"
  }
}
