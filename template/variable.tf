variable "rules" {
  description = "List of security policy rules"
  type = list(object({
    name                  = string
    #audit_comment         = optional(string, "Initial config")
    source_zones          = list(string)
    source_address        = list(string)
    source_users          = list(string)
    destination_zones     = list(string)
    destination_address   = list(string)
    applications          = list(string)
    services              = list(string)
    categories            = list(string)
    action                = string
  }))
}
