include {
  path = find_in_parent_folders()
}

terraform {
  source = "../../../modules/vpc"
}

inputs = {
  name            = "supporthub-dev"
  cidr            = "10.20.0.0/16"
  azs             = ["us-east-1a", "us-east-1b"]
  public_subnets  = ["10.20.0.0/20", "10.20.16.0/20"]
  private_subnets = ["10.20.128.0/20", "10.20.144.0/20"]

  enable_nat_gateway = true
  single_nat_gateway = true

  tags = {
    Project = "supporthub"
    Env     = "dev"
  }
}
