module "cluster" {
  source = "./modules/cluster"
  name = var.name
  region = var.region
}