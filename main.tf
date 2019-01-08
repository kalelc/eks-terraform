provider "aws" {
  region = "${var.region}"
}

module "networking" {
  source        = "./networking"
  subnet_name   = "${var.subnet_name}"
  vpc_name      = "${var.vpc_name}"
  vpc_cidr      = "${var.vpc_cidr}"
  cluster_name  = "${var.cluster_name}"
  node_name     = "${var.node_name}"
  total_subnets = "${var.total_subnets}"
}

module "eks" {
  source       = "./eks"
  cluster_name = "${var.cluster_name}"
  node_name    = "${var.node_name}"
  cluster_user = "${var.cluster_user}"
  vpc_id       = "${module.networking.vpc_id}"
  subnet_ids   = "${module.networking.subnet_ids}"
  key_name     = "${var.key_name}"
}

module "mongo" {
  source     = "./mongo"
  region     = "${var.region}"
  vpc_id     = "${module.networking.vpc_id}"
  subnet_ids = "${module.networking.subnet_ids}"
  cidr_block = "${var.vpc_cidr}"
  key_name   = "${var.key_name}"
}
