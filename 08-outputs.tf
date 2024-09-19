output "configure_kubectl" {
  description = "Configure kubectl: "
  value       = "aws eks --region ${var.region} update-kubeconfig --name ${module.eks.cluster_name}"
}

output "eks_cluster_id" {

  value = module.eks.cluster_id

}

output "eks_cluster_name" {

  value = module.eks.cluster_name
}

output "eks_cluster_endpoint" {
  value = module.eks.cluster_endpoint
}

output "eks_cluster_version" {
  value = module.eks.cluster_version

}
output "eks_cluster_oidc_provider_arn" {
  value = module.eks.oidc_provider_arn
}



