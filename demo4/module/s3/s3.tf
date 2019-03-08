resource "aws_s3_bucket" "my_s3_bucket" {
  bucket = "${var.bucket_name}"
  acl    = "private"
  policy = "${var.bucket_policy}"
  region = "${var.region}"

  versioning {
    enabled = true
  }

  lifecycle_rule {
    id                                     = "auto-delete-expired-objects"
    prefix                                 = ""
    enabled                                = true
    abort_incomplete_multipart_upload_days = "${var.non_current_version_file_retention_period}"

    noncurrent_version_expiration {
      days = "${var.non_current_version_file_retention_period}"
    }
  }

  tags = "${var.tags}"
}
