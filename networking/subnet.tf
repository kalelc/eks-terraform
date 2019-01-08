resource "aws_subnet" "default" {
  count = "${var.total_subnets}"

  availability_zone = "${data.aws_availability_zones.available.names[count.index]}"
  cidr_block        = "10.3.${count.index + 1}.0/24"
  vpc_id            = "${aws_vpc.default.id}"

  tags = "${
    map(
     "Name", "${var.subnet_name}",
     "kubernetes.io/cluster/${var.cluster_name}", "shared",
     "kubernetes.io/role/internal-elb", "",
     "kubernetes.io/role/elb", ""
    )
  }"
}
