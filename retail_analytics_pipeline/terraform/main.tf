module "s3" {
  source = "./modules/s3"
}

module "redshift" {
  source = "./modules/redshift"
}

module "iam" {
  source = "./modules/iam"
}

module "glue" {
  source = "./modules/glue"
  iam_role_arn = module.iam.glue_role_arn
}
