# Terraform AWS S3 Bucket Module

## Overview

This Terraform module provisions an Amazon S3 bucket with customizable options for access control and tagging. It supports various configurations for secure and efficient management of your S3 buckets.

## Features

- **S3 Bucket Creation**: Automatically creates an S3 bucket.
- **Access Control**: Allows setting bucket policies, ACLs (Access Control Lists), and enabling/disabling public access.
- **Tagging**: Supports tagging for the S3 bucket, enabling easier resource identification and management.

## Usage

```hcl
module "s3_bucket" {
 source               = "erikngigi/tf-bucket-module/aws"
 bucket_name          = var.bucket_name
 bucket_force_destroy = var.bucket_force_destroy
 bucket_tag           = var.bucket_tag
 bucket_ownership     = var.bucket_ownership
 bucket_acl           = var.bucket_acl
}
```

## Inputs

| Name                    | Description                                                                            | Type        | Default     | Required |
|-------------------------|----------------------------------------------------------------------------------------|-------------|-------------|----------|
| `bucket_name`           | The name of the S3 bucket.                                                              | `string`    | `null`      | Yes      |
| `bucket_acl`                   | The canned ACL to apply. Supported values include `private`, `public-read`, etc.        | `string`    | `"private"` | No       |
| `bucket_force_destroy`         | Whether to force destroy the bucket (including all objects) when Terraform destroys it. | `bool`      | `false`     | No       |
| `bucket_tags`                  | A map of tags to assign to the bucket.                                                  | `map(string)` | `{}`      | No       |

## Outputs

| Name            | Description                                      |
|-----------------|--------------------------------------------------|
| `bucket_id`     | The name of the bucket created.                   |

## Requirements

- Terraform 1.0.0 or later
- AWS provider 5.x or later

## Authors

This module is maintained by [Eric Ngigi](https://github.com/erikngigi)

---

This README provides clear instructions on how to use your Terraform module, including examples and detailed descriptions of the inputs and outputs. Adjust the content to suit your specific needs and practices.
