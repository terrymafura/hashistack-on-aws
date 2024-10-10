variable "project_name" {
  type        = string
  description = "The name of the project"
}

variable "aws_region" {
  type        = string
  description = "The AWS region to deploy the resources"
}

variable "project_scope_id" {
  type        = string
  description = "The scope ID for the Boundary project"
}

variable "eks_node_group_name" {
  type        = string
  description = "The name of the EKS node group"
}

variable "eks_cluster_name" {
  type        = string
  description = "The name of the EKS cluster"
}

variable "hcp_boundary_ec2_key_pair_private_key" {
  type        = string
  description = "The raw private key for the EC2 key pair used for injected credentials with targets.  This should be the same key that can SSH into EKS nodes."
}