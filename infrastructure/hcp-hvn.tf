resource "hcp_hvn" "main" {
  hvn_id         = "${var.project_name}-hvn"
  cloud_provider = "aws"
  region         = var.aws_default_region
  cidr_block     = var.hvn_cidr_block
}

data "aws_arn" "peer" {
  arn = module.vpc.arn
}

resource "hcp_aws_network_peering" "main" {
  hvn_id          = hcp_hvn.main.hvn_id
  peering_id      = "${project_name}-${var.aws_default_region}"
  peer_vpc_id     = module.vpc.id
  peer_account_id = data.aws_caller_identity.current.account_id
  peer_vpc_region = var.aws_default_region
}

resource "hcp_hvn_route" "hcp-to-aws" {
  hvn_link         = hcp_hvn.main.self_link
  hvn_route_id     = "hcp-to-aws"
  destination_cidr = var.vpc_cidr_block
  target_link      = hcp_aws_network_peering.main.self_link
}

resource "aws_vpc_peering_connection_accepter" "peer" {
  vpc_peering_connection_id = hcp_aws_network_peering.main.provider_peering_id
  auto_accept               = true
}
