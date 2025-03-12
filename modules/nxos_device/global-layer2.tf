resource "nxos_bridge_domain" "ALL-VLAN10" {
  fabric_encap = "vlan-10"
  access_encap = "vxlan-10010"
  name         = "L2VNI-10"
}
resource "nxos_bridge_domain" "ALL-VLAN20" {
  fabric_encap = "vlan-20"
  access_encap = "vxlan-10020"
  name         = "L2VNI-20"
}
