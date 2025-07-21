resource "aws_glue_catalog_database" "retail_db" {
  name = "retail"
}

resource "aws_glue_crawler" "raw_data_crawler" {
  name          = "retail-raw-crawler"
  role          = var.iam_role_arn
  database_name = aws_glue_catalog_database.retail_db.name
  s3_targets {
    path = "s3://retail-raw-data-bucket/"
  }
}
