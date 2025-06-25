resource "nxos_bgp" "ALL-BGP" {
  admin_state = "enabled"
}
resource "nxos_bgp_instance" "BGP-Instance" {
  admin_state             = "enabled"
  asn                     = "65000"
}