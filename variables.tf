# Region

variable "region" {
  description = "The AWS region to create things in"
  default     = "us-west-2"
}

# VPC
variable "vpc_name" {
  default = "kuberentes project - vpc"
}

variable "vpc_cidr" {
  default = "10.3.0.0/16"
}

# Subnet
variable "subnet_name" {
  default = "kuberentes project - subnet"
}

variable "total_subnets" {
  default = 3
}

# Cluster

variable "cluster_name" {
  default = "project-cluster"
  type    = "string"
}

variable "cluster_user" {
  default = "aws-user"
}

variable "node_name" {
  default = "project-node"
  type    = "string"
}

variable "key_name" {
  default = "andrescolonia"
}
