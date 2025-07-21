resource "aws_iam_role" "glue_role" {
  name = "RetailGlueRole"
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Effect = "Allow"
      Principal = {
        Service = "glue.amazonaws.com"
      }
      Action = "sts:AssumeRole"
    }]
  })
}

output "glue_role_arn" {
  value = aws_iam_role.glue_role.arn
}
