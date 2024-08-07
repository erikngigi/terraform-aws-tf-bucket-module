variable "bucket_name" {
  description = "default name of the s3 bucket"
  type        = string
}

variable "bucket_force_destroy" {
  description = "boolean value to allow bucket destruction"
  type        = bool
}

variable "bucket_tag" {
  description = "tag value for the s3 bucket"
  type        = string
}
