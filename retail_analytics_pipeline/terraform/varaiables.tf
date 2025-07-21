variable "iam_role_arn" {
  description = "IAM role ARN for AWS Glue"
  type        = string
}

variable "redshift_password" {
  type        = string
  description = "Redshift master password"
  sensitive   = true
}