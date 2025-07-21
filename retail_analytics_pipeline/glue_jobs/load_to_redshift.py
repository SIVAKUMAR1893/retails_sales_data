from awsglue.context import GlueContext
from pyspark.context import SparkContext

glueContext = GlueContext(SparkContext())

df = glueContext.create_dynamic_frame.from_options(
    connection_type="s3",
    connection_options={"paths": ["s3://retail-processed-data-bucket/"]},
    format="parquet"
)

glueContext.write_dynamic_frame.from_options(
    frame=df,
    connection_type="redshift",
    connection_options={
        "url": "jdbc:redshift://<endpoint>:5439/dev",
        "dbtable": "sales",
        "user": "admin",
        "password": "<password>"
    }
)
