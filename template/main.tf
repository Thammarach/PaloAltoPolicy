resource "panos_security_policy" "SecurityRules" {
    #depends_on = [var.depends_on]
    dynamic "rule" {
	for_each = var.rules
      	content {
      	  name                  = rule.value.name
      	  #description           = rule.value.description
      	  audit_comment         = "Initial config"
      	  #audit_comment         = rule.value.audit_comment
      	  source_zones          = rule.value.source_zones
      	  source_addresses      = rule.value.source_address
      	  source_users          = rule.value.source_users
      	  destination_zones     = rule.value.destination_zones
      	  destination_addresses = rule.value.destination_address
      	  applications          = rule.value.applications
      	  services              = rule.value.services
      	  categories            = rule.value.categories
      	  #group                 = rule.value.group
      	  action                = rule.value.action
        }
    }

    lifecycle {
        #prevent_destroy 	= true
    	create_before_destroy 	= true
    }
}
