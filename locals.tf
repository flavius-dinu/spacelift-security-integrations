locals {
  rg_details = {
    rg1 = {
      location = "westeurope"
    }
    rg2 = {
      location = "eastus"
    }
    rg3 = {
      location = "westus"
    }
  }
  nsg_details = {
    nsg1 = {
      rg_name = "rg1"
    }
    nsg2 = {
      rg_name = "rg3"
    }
  }
}
