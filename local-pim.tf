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