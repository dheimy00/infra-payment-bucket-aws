variable "bucket_name" {
  type = string
}

variable "versioning_enabled" {
  type    = bool
  default = false
}

variable "encryption_algorithm" {
  type    = string
  default = "AES256"
}

variable "tags" {
  type    = map(string)
  default = {}
}

variable "lifecycle_rules" {
  type = list(object({
    id              = string
    status          = string
    expiration_days = optional(number)
    transitions     = optional(list(object({
      days          = number
      storage_class = string
    })))
  }))
  default = []
}
