locals {
  bucket_name = "${var.bucket_name}-${terraform.workspace}"
}