from awsglue.context import GlueContext
from awsglue.dynamicframe import DynamicFrame
from pyspark.context import SparkContext

glueContext = GlueContext(SparkContext())
raw = glueContext.create_dynamic_frame.from_catalog(database="retail", table_name="sales_data")

df = raw.toDF().dropDuplicates(["product_id", "timestamp"])
df = df.withColumn("total", df["quantity"] * df["price"])

final = DynamicFrame.fromDF(df, glueContext, "final")
glueContext.write_dynamic_frame.from_options(
    frame=final,
    connection_type="s3",
    connection_options={"path": "s3://retail-processed-data-bucket/"},
    format="parquet"
)
