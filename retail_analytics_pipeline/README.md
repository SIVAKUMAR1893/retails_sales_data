# Retail Analytics Pipeline

End-to-end data pipeline using AWS Glue, PySpark, Redshift, Step Functions, and QuickSight.  
Infrastructure provisioned via modular Terraform.

## Features
- Raw data ingestion via S3
- ETL with AWS Glue and PySpark
- Load into Redshift
- Orchestration with Step Functions
- Visualization via QuickSight

## Usage
1. `terraform init && terraform apply`
2. Upload `sample_sales_data.csv` to `retail-raw-data-bucket`
3. Run Glue crawler
4. Trigger Step Function
5. Explore dashboards in QuickSight
