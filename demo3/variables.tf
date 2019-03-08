variable "profile" {
  description = "AWS Profile to use."
  type        = "string"
}

variable "region" {
  description = "AWS Region name"
  type        = "string"
  default     = "us-west-2"
}

variable "instance_type" {
  description = "Instance type"
  type        = "string"
  default     = "t2.micro"
}

variable "keypair" {
  description = "AWS Keypair"
  type        = "string"
}

#Tags
variable "tags" {
  description = "A map of tags to apply to resources"
  type        = "map"
}
