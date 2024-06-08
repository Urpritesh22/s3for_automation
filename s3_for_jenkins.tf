resource "aws_s3_bucket" "my_bucket2" {
  bucket = "young-minds-project-bucket-pritesh2" # Replace with your bucket name
  acl    = var.acl

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.my_bucket2.id

  versioning_configuration {
    status = "Enabled"
  }
}
