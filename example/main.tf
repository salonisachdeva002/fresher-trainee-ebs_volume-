module "ebs_module" {
  source = "../"
  az = var.zone
  size = var.size
  tag_name = var.tag_name
}