#L2 - LFN101
resource "nxos_bridge_domain" "LFN101-VLAN10" {
  fabric_encap = "vlan-10"
  access_encap = "vxlan-10010"
  name         = "L2VNI-10"
  provider = nxos.LFN101
}
resource "nxos_bridge_domain" "LFN101-VLAN11" {
  fabric_encap = "vlan-11"
  access_encap = "vxlan-10011"
  name         = "L3VNI-11"
  provider = nxos.LFN101
}
resource "nxos_bridge_domain" "LFN101-VLAN20" {
  fabric_encap = "vlan-20"
  access_encap = "vxlan-10020"
  name         = "L2VNI-20"
  provider = nxos.LFN101
}

#L2 - LFN102
resource "nxos_bridge_domain" "LFN102-VLAN10" {
  fabric_encap = "vlan-10"
  access_encap = "vxlan-10010"
  name         = "L2VNI-10"
  provider = nxos.LFN102
}
resource "nxos_bridge_domain" "LFN102-VLAN11" {
  fabric_encap = "vlan-11"
  access_encap = "vxlan-10011"
  name         = "L3VNI-11"
  provider = nxos.LFN102
}
resource "nxos_bridge_domain" "LFN102-VLAN20" {
  fabric_encap = "vlan-20"
  access_encap = "vxlan-10020"
  name         = "L2VNI-20"
  provider = nxos.LFN102
}
