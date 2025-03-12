terraform {
  required_providers {
    nxos = {
      source  = "CiscoDevNet/nxos"
      version = ">= 0.5.9"
    }
  }
}

provider "nxos" {
  username = "admin"
  password = "daisydev"
  url     = "https://192.168.1.101"   # Change to your device IP
  insecure = true            # Set to false if using valid TLS certs
  alias = "LFN101"
}

provider "nxos" {
  username = "admin"
  password = "daisydev"
  url     = "https://192.168.1.102"   # Change to your device IP
  insecure = true            # Set to false if using valid TLS certs
  alias = "LFN102"
}

module "LFN101"{
  source = "./modules/nxos_device"
  providers = {nxos = nxos.LFN101 }
}

module "LFN102"{
  source = "./modules/nxos_device"
  providers = {nxos = nxos.LFN102 }
}