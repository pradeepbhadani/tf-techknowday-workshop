resource "random_string" "bucket_suffix" {
  length  = 6
  special = false
  upper   = false
  lower   = true
  number  = true
}

locals {
  full_bucket_name = "${var.bucket_name}-${random_string.bucket_suffix.result}"
}

module "s3-module" {
  source      = "module/s3"
  bucket_name = "${local.full_bucket_name}"
  tags        = "${var.tags}"
}
