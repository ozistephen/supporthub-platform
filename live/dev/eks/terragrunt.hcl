include {
  path = find_in_parent_folders()
}

terraform {
  source = "../../../modules/eks"
}

dependency "vpc" {
  config_path = "../vpc"
}

# This forces run-all ordering too (real-company habit)
dependencies {
  paths = ["../vpc"]
}

inputs = {
  cluster_name    = "supporthub-dev"
  cluster_version = "1.29"

  vpc_id     = dependency.vpc.outputs.vpc_id
  subnet_ids = dependency.vpc.outputs.private_subnets

  eks_managed_node_groups = {
    default = {
      instance_types = ["t3.large"]
      min_size       = 2
      max_size       = 4
      desired_size   = 2
    }
  }

  tags = {
    Project = "supporthub"
    Env     = "dev"
  }
}
