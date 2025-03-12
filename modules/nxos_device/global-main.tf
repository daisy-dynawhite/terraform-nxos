# modules/nxos_device/main.tf
terraform {
  required_providers {
    nxos = {
      source = "CiscoDevNet/nxos"
      version = ">= 0.5.9"
    }
  }
}