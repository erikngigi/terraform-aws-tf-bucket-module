output "bucket_id" {
  description = "the id of the s3 bucket"
  value       = aws_s3_bucket.test_bucket.id
}
