locals {
  policy_info = {
    for item in csvdecode(file("./dev.csv")) :
    item.name => {
      name                  = item.name
      source_zones          = split(", ", item.source_zones)  # Convert to list by splitting
      source_address        = split(", ", item.source_address)  # Convert to list by splitting
      source_users          = split(", ", item.source_users)  # Convert to list by splitting
      destination_zones     = split(", ", item.destination_zones)  # Convert to list by splitting
      destination_address   = split(", ", item.destination_address)  # Convert to list by splitting
      applications          = split(", ", item.applications)  # Convert to list by splitting
      services              = split(", ", item.services)  # Convert to list by splitting
      categories            = split(", ", item.categories)  # Convert to list by splitting
      action                = item.action
    }
  }
}
