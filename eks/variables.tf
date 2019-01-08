# Autoscaling Group

variable "autoscaling-group-desired-capacity" {
  default = 1
}

variable "autoscaling-group-min-capacity" {
  default = 1
}

variable "autoscaling-group-max-capacity" {
  default = 2
}

variable "instance_type" {
  default = "m5.large"
}

variable "cluster_name" {}
variable "node_name" {}
variable "cluster_user" {}
variable "vpc_id" {}
variable "key_name" {}

variable "subnet_ids" {
  type = "list"
}
