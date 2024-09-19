module "eks_blueprints_addons" {

  depends_on = [ module.eks ]

  source            = "aws-ia/eks-blueprints-addons/aws"
  version           = "1.16.3"
  cluster_name      = module.eks.cluster_name
  cluster_endpoint  = module.eks.cluster_endpoint
  cluster_version   = module.eks.cluster_version
  oidc_provider_arn = module.eks.oidc_provider_arn

  enable_cluster_autoscaler = true

  cluster_autoscaler = {
    name          = "cluster-autoscaler"
    chart_version = "9.29.0"
    repository    = "https://kubernetes.github.io/autoscaler"
    namespace     = "kube-system"
  }

}

  








