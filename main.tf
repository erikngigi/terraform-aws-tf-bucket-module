module "aws_storage" {
  source               = "./modules/storage"
  bucket_name          = var.bucket_name
  bucket_force_destroy = var.bucket_force_destroy
  bucket_tag           = var.bucket_tag
  bucket_ownership     = var.bucket_ownership
  bucket_acl           = var.bucket_acl
}
