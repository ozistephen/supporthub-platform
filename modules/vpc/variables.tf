variable "name" {}
variable "cidr" {}
variable "azs" {}
variable "public_subnets" {}
variable "private_subnets" {}
variable "enable_nat_gateway" {}
variable "single_nat_gateway" {}
variable "tags" {
  type = map(string)
}
