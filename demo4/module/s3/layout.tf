resource "aws_s3_bucket_object" "raw_data" {
  bucket = "${aws_s3_bucket.my_s3_bucket.id}"
  acl    = "private"
  key    = "raw_data/"
  source = "/dev/null"
}

resource "aws_s3_bucket_object" "processed_data" {
  bucket = "${aws_s3_bucket.my_s3_bucket.id}"
  acl    = "private"
  key    = "processed_data/"
  source = "/dev/null"
}
