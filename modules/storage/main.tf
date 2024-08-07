resource "aws_s3_bucket" "test_bucket" {
  bucket        = var.bucket_name
  force_destroy = var.bucket_force_destroy

  tags = {
    Name = var.bucket_tag
  }
}

resource "aws_s3_bucket_ownership_controls" "test_bucket" {
  bucket = aws_s3_bucket.test_bucket.id
  rule {
    object_ownership = var.bucket_ownership
  }
}

resource "aws_s3_bucket_acl" "test_bucket" {
  depends_on = [aws_s3_bucket_ownership_controls.test_bucket]
  bucket     = aws_s3_bucket.test_bucket.id
  acl        = var.bucket_acl
}
