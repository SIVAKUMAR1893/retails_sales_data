resource "aws_redshift_cluster" "analytics" {
  cluster_identifier = "retail-cluster"
  node_type          = "dc2.large"
  master_username    = "admin"
  master_password    = var.redshift_password
  cluster_type       = "single-node"
}
