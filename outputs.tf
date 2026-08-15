output "vpclattice_service_network_vpc_associations_id" {
  description = "Map of id values across all vpclattice_service_network_vpc_associations, keyed the same as var.vpclattice_service_network_vpc_associations"
  value       = { for k, v in aws_vpclattice_service_network_vpc_association.vpclattice_service_network_vpc_associations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "vpclattice_service_network_vpc_associations_arn" {
  description = "Map of arn values across all vpclattice_service_network_vpc_associations, keyed the same as var.vpclattice_service_network_vpc_associations"
  value       = { for k, v in aws_vpclattice_service_network_vpc_association.vpclattice_service_network_vpc_associations : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "vpclattice_service_network_vpc_associations_created_by" {
  description = "Map of created_by values across all vpclattice_service_network_vpc_associations, keyed the same as var.vpclattice_service_network_vpc_associations"
  value       = { for k, v in aws_vpclattice_service_network_vpc_association.vpclattice_service_network_vpc_associations : k => v.created_by if v.created_by != null && length(v.created_by) > 0 }
}
output "vpclattice_service_network_vpc_associations_dns_options" {
  description = "Map of dns_options values across all vpclattice_service_network_vpc_associations, keyed the same as var.vpclattice_service_network_vpc_associations"
  value       = { for k, v in aws_vpclattice_service_network_vpc_association.vpclattice_service_network_vpc_associations : k => one(v.dns_options) if v.dns_options != null && length(v.dns_options) > 0 }
}
output "vpclattice_service_network_vpc_associations_private_dns_enabled" {
  description = "Map of private_dns_enabled values across all vpclattice_service_network_vpc_associations, keyed the same as var.vpclattice_service_network_vpc_associations"
  value       = { for k, v in aws_vpclattice_service_network_vpc_association.vpclattice_service_network_vpc_associations : k => v.private_dns_enabled if v.private_dns_enabled != null }
}
output "vpclattice_service_network_vpc_associations_region" {
  description = "Map of region values across all vpclattice_service_network_vpc_associations, keyed the same as var.vpclattice_service_network_vpc_associations"
  value       = { for k, v in aws_vpclattice_service_network_vpc_association.vpclattice_service_network_vpc_associations : k => v.region if v.region != null && length(v.region) > 0 }
}
output "vpclattice_service_network_vpc_associations_security_group_ids" {
  description = "Map of security_group_ids values across all vpclattice_service_network_vpc_associations, keyed the same as var.vpclattice_service_network_vpc_associations"
  value       = { for k, v in aws_vpclattice_service_network_vpc_association.vpclattice_service_network_vpc_associations : k => v.security_group_ids if v.security_group_ids != null && length(v.security_group_ids) > 0 }
}
output "vpclattice_service_network_vpc_associations_service_network_identifier" {
  description = "Map of service_network_identifier values across all vpclattice_service_network_vpc_associations, keyed the same as var.vpclattice_service_network_vpc_associations"
  value       = { for k, v in aws_vpclattice_service_network_vpc_association.vpclattice_service_network_vpc_associations : k => v.service_network_identifier if v.service_network_identifier != null && length(v.service_network_identifier) > 0 }
}
output "vpclattice_service_network_vpc_associations_status" {
  description = "Map of status values across all vpclattice_service_network_vpc_associations, keyed the same as var.vpclattice_service_network_vpc_associations"
  value       = { for k, v in aws_vpclattice_service_network_vpc_association.vpclattice_service_network_vpc_associations : k => v.status if v.status != null && length(v.status) > 0 }
}
output "vpclattice_service_network_vpc_associations_tags" {
  description = "Map of tags values across all vpclattice_service_network_vpc_associations, keyed the same as var.vpclattice_service_network_vpc_associations"
  value       = { for k, v in aws_vpclattice_service_network_vpc_association.vpclattice_service_network_vpc_associations : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "vpclattice_service_network_vpc_associations_tags_all" {
  description = "Map of tags_all values across all vpclattice_service_network_vpc_associations, keyed the same as var.vpclattice_service_network_vpc_associations"
  value       = { for k, v in aws_vpclattice_service_network_vpc_association.vpclattice_service_network_vpc_associations : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "vpclattice_service_network_vpc_associations_vpc_identifier" {
  description = "Map of vpc_identifier values across all vpclattice_service_network_vpc_associations, keyed the same as var.vpclattice_service_network_vpc_associations"
  value       = { for k, v in aws_vpclattice_service_network_vpc_association.vpclattice_service_network_vpc_associations : k => v.vpc_identifier if v.vpc_identifier != null && length(v.vpc_identifier) > 0 }
}

