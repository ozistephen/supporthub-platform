variable "cluster_name" {}
variable "cluster_version" {}
variable "vpc_id" {}
variable "subnet_ids" {}
variable "eks_managed_node_groups" {}
variable "tags" {
  type = map(string)
}
