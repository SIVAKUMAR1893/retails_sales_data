resource "aws_s3_bucket" "raw" {
  bucket = "retail-raw-data-bucket"
}

resource "aws_s3_bucket" "processed" {
  bucket = "retail-processed-data-bucket"
}
