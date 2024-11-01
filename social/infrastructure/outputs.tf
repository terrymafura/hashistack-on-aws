output "subdomain_name_servers" {
  value       = aws_route53_zone.subdomain.name_servers
  description = "list of name servers for the subdomain"
}

output "subdomain_zone_id" {
  value       = aws_route53_zone.subdomain.zone_id
  description = "ID of the subdomain route53 hosted zone"
}

output "subdomain_name" {
  value       = var.public_subdomain_name
  description = "Name of the subdomain"
}

output "eks_cluster_name" {
  value       = module.eks_cluster.eks_cluster_name
  description = "Name of the EKS cluster"
}

output "eks_node_group_name" {
  value       = module.eks_cluster.eks_node_group_name
  description = "Name of the EKS node group"
}

output "eks_cluster_api_endpoint" {
  value       = module.eks_cluster.eks_cluster_api_endpoint
  description = "API endpoint for the EKS cluster"
}

output "eks_cluster_role_name" {
  value       = module.eks_cluster.eks_cluster_role_name
  description = "The name of the IAM role for the EKS cluster"
}

output "eks_node_group_role_name" {
  value       = module.eks_cluster.eks_node_group_role_name
  description = "The name of the IAM role for the EKS node group"
}

output "eks_cluster_security_group_id" {
  value       = module.eks_cluster.eks_cluster_security_group_id
  description = "The ID of the automatically created security group for the EKS cluster"
}

output "eks_node_group_remote_access_security_group_id" {
  value       = aws_security_group.eks_remote_access.id
  description = "The ID of the security group for remote access to the EKS node group"
}

output "eks_cluster_oidc_provider_url" {
  value       = module.eks_cluster.oidc_provider_url
  description = "The IAM valid OIDC URL for the EKS cluster"
}

output "eks_cluster_oidc_provider_arn" {
  value       = module.eks_cluster.oidc_provider_arn
  description = "The ARN of the IAM OIDC provider for the EKS cluster"
}

output "vpc_id" {
  value       = module.vpc.id
  description = "ID of the VPC"
}

output "vpc_public_subnet_ids" {
  value       = module.vpc.public_subnet_ids
  description = "List of public subnet IDs"
}

output "vpc_private_subnet_ids" {
  value       = module.vpc.private_subnet_ids
  description = "List of private subnet IDs"
}

output "hcp_boundary_access_key_id" {
  value = aws_iam_access_key.boundary.id
}

output "hcp_boundary_secret_access_key" {
  value     = aws_iam_access_key.boundary.secret
  sensitive = true
}
