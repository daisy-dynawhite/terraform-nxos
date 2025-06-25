terraform {
  required_providers {
    nxos = {
      source  = "CiscoDevNet/nxos"
      version = ">= 0.5.9"
    }
  }
}

# Provider information
  provider "nxos" {
    username = "admin"
    password = "daisydev"
    url     = "https://192.168.1.101"  
    insecure = true           
    alias = "LFN101"
  }

  provider "nxos" {
    username = "admin"
    password = "daisydev"
    url     = "https://192.168.1.102"  
    insecure = true            
    alias = "LFN102"
  }

  provider "nxos" {
    username = "admin"
    password = "daisydev"
    url     = "https://192.168.1.201"  
    insecure = true            
    alias = "SPN201"
  }

# Modules
  module "LFN101"{
    source = "./modules/nxos_device"
    providers = {nxos = nxos.LFN101 }
  }

  module "LFN102"{
    source = "./modules/nxos_device"
    providers = {nxos = nxos.LFN102 }
  }

  module "SPN201"{
    source = "./modules/nxos_device"
    providers = {nxos = nxos.SPN201 }
  }