resource "aws_vpc" "default" {
  cidr_block = "${var.vpc_cidr}"

  tags = "${
    map(
     "Name", "${var.vpc_name}",
     "kubernetes.io/cluster/${var.cluster_name}", "shared",
    )
  }"
}
