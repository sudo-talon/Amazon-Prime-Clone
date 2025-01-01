module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "19.15.1"

  cluster_name                   = local.name
  cluster_endpoint_public_access = true

  cluster_addons = {
    coredns = {
      most_recent = true
    }
    kube-proxy = {
      most_recent = true
    }
    vpc-cni = {
      most_recent = true
    }
  }

  vpc_id                   = module.vpc.vpc_id
  subnet_ids               = module.vpc.private_subnets

  eks_managed_node_groups = {
<<<<<<< HEAD
    panda-node = {
=======
    talon-node = {
>>>>>>> 590265c (update_amazon_prime_clone)
      min_size     = 2
      max_size     = 4
      desired_size = 2

      instance_types = ["t2.medium"]
      capacity_type  = "SPOT"

      tags = {
<<<<<<< HEAD
        ExtraTag = "Panda_Node"
=======
        ExtraTag = "Talon_Node"
>>>>>>> 590265c (update_amazon_prime_clone)
      }
    }
  }

  tags = local.tags
<<<<<<< HEAD
}
=======
}
>>>>>>> 590265c (update_amazon_prime_clone)
