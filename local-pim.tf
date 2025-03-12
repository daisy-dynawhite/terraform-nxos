# PIM - LFN-101
resource "nxos_pim_static_rp_policy" "LFN101-PIM-RPPolicy" {
  vrf_name = "default"
  name     = "RP"
  provider = nxos.LFN101
}
resource "nxos_pim_static_rp" "LFN101-PIM-RP" {
  vrf_name = "default"
  address  = "192.168.238.238"
  provider = nxos.LFN101
  depends_on = [ nxos_pim_static_rp_policy.LFN101-PIM-RPPolicy ]
}
resource "nxos_pim_static_rp_group_list" "LFN101-PIM-RP-GL" {
  vrf_name   = "default"
  rp_address = "192.168.238.238"
  address    = "224.0.0.0/4"
  provider = nxos.LFN101
  depends_on = [ nxos_pim_static_rp.LFN101-PIM-RP ]
}
resource "nxos_pim_interface" "LFN101-PIM-Lo0" {
  vrf_name     = "default"
  interface_id = "lo0"
  admin_state  = "enabled"
  sparse_mode  = true
  provider = nxos.LFN101
}
resource "nxos_pim_interface" "LFN101-PIM-Lo10" {
  vrf_name     = "default"
  interface_id = "lo10"
  admin_state  = "enabled"
  sparse_mode  = true
  provider = nxos.LFN101
}
resource "nxos_pim_interface" "LFN101-PIM-Eth1-1" {
  vrf_name     = "default"
  interface_id = "eth1/1"
  admin_state  = "enabled"
  sparse_mode  = true
  provider = nxos.LFN101
}
resource "nxos_pim_interface" "LFN101-PIM-Eth1-2" {
  vrf_name     = "default"
  interface_id = "eth1/2"
  admin_state  = "enabled"
  sparse_mode  = true
  provider = nxos.LFN101
}

# PIM - LFN-102
resource "nxos_pim_static_rp_policy" "LFN102-PIM-RPPolicy" {
  vrf_name = "default"
  name     = "RP"
  provider = nxos.LFN102
}
resource "nxos_pim_static_rp" "LFN102-PIM-RP" {
  vrf_name = "default"
  address  = "192.168.238.238"
  provider = nxos.LFN102
  depends_on = [ nxos_pim_static_rp_policy.LFN102-PIM-RPPolicy ]
}
resource "nxos_pim_static_rp_group_list" "LFN102-PIM-RP-GL" {
  vrf_name   = "default"
  rp_address = "192.168.238.238"
  address    = "224.0.0.0/4"
  provider = nxos.LFN102
  depends_on = [ nxos_pim_static_rp.LFN102-PIM-RP ]
}
resource "nxos_pim_interface" "LFN102-PIM-Lo0" {
  vrf_name     = "default"
  interface_id = "lo0"
  admin_state  = "enabled"
  sparse_mode  = true
  provider = nxos.LFN102
}
resource "nxos_pim_interface" "LFN102-PIM-Lo10" {
  vrf_name     = "default"
  interface_id = "lo10"
  admin_state  = "enabled"
  sparse_mode  = true
  provider = nxos.LFN102
}
resource "nxos_pim_interface" "LFN102-PIM-Eth1-1" {
  vrf_name     = "default"
  interface_id = "eth1/1"
  admin_state  = "enabled"
  sparse_mode  = true
  provider = nxos.LFN102
}
resource "nxos_pim_interface" "LFN102-PIM-Eth1-2" {
  vrf_name     = "default"
  interface_id = "eth1/2"
  admin_state  = "enabled"
  sparse_mode  = true
  provider = nxos.LFN102
}