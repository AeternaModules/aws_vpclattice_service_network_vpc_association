variable "vpclattice_service_network_vpc_associations" {
  description = <<EOT
Map of vpclattice_service_network_vpc_associations, attributes below
Required:
    - service_network_identifier
    - vpc_identifier
Optional:
    - private_dns_enabled
    - region
    - security_group_ids
    - tags
    - tags_all
    - dns_options (block):
        - private_dns_preference (optional)
        - private_dns_specified_domains (optional)
EOT

  type = map(object({
    service_network_identifier = string
    vpc_identifier             = string
    private_dns_enabled        = optional(bool)
    region                     = optional(string)
    security_group_ids         = optional(list(string))
    tags                       = optional(map(string))
    tags_all                   = optional(map(string))
    dns_options = optional(object({
      private_dns_preference        = optional(string)
      private_dns_specified_domains = optional(set(string))
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.vpclattice_service_network_vpc_associations : (
        v.dns_options == null || (v.dns_options.private_dns_specified_domains == null || (alltrue([for x in v.dns_options.private_dns_specified_domains : length(x) >= 1 && length(x) <= 255])))
      )
    ])
    error_message = "must be between 1 and 255 characters"
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

