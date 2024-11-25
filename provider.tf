# Configure the panos provider
terraform {
  required_providers {
    panos = {
      #source  = "PaloAltoNetworks/panos"
      source  = "registry.opentofu.org/hashicorp/panos"
      version = "1.11.1"
    }
  }
}

provider "panos" {
  hostname = "X.X.X.X"
  username = "username"
  password = "password"
}
