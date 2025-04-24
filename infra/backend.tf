terraform {
  backend "s3" {
    # These values will be filled in by the user when initializing the backend
    bucket         = "dheimy00-us-east-2-terraform-statefile"
    region         = "us-east-2"
    dynamodb_table = "dheimy00-us-east-2-terraform-lock"
  }
} 