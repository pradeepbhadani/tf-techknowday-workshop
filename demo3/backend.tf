terraform {
  backend "s3" {
    bucket  = "<your-S3-bucket>" #Update this with S3 bucket name
    key     = "demo3"
    region  = "us-west-2"
    profile = "demo"
  }
}
