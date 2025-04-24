module "s3_bucket" {
  source = "git::https://github.com/dheimy00/modules-infra-bucket-S3-aws.git?ref=v1.0.21"

  bucket_name = local.bucket_name
  versioning_enabled = true
  encryption_algorithm = "AES256"

  tags = {
    Environment = "Development"
    Project     = "Example"
  }

  lifecycle_rules = [
    {
      id     = "log"
      status = "Enabled"
      filter = {
        prefix = "logs/"
      }
      expiration_days = 90
      transitions = [
        {
          days          = 30
          storage_class = "STANDARD_IA"
        },
        {
          days          = 60
          storage_class = "GLACIER"
        }
      ]
    }
  ]
}