terraform {
  backend "s3" {
    bucket         = "dheimy00-us-east-2-terraform-statefile"
    key            = "infra/terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "dheimy00-us-east-2-terraform-lock"
    encrypt        = true
  }
}