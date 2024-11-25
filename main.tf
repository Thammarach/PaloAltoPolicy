module "PaloAltoPolicy" {
  source   = "./template"
  for_each = local.policy_info

  rules = [
    {
      name                  = each.value.name
      audit_comment         = "SSH Allow Rule"
      source_zones          = each.value.source_zones
      source_address        = each.value.source_address
      source_users          = each.value.source_users
      destination_zones     = each.value.destination_zones
      destination_address   = each.value.destination_address
      applications          = each.value.applications
      services              = each.value.services
      categories            = each.value.categories
      #group                 = each.value.group
      action                = each.value.action
    }
  ]
}

