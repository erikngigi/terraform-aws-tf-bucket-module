variable "bucket_name" {
  description = "default name of the s3 bucket (imported)"
  type        = string
}

variable "bucket_force_destroy" {
  description = "boolean value to allow bucket destruction (imported)"
  type        = bool
}

variable "bucket_tag" {
  description = "tag value for the s3 bucket (imported)"
  type        = string
}

variable "bucket_acl" {
  description = "value that determines if a bucket is public or private"
  type        = string
}

variable "bucket_ownership" {
  description = "describes who owns the bucket"
  type        = string
}
