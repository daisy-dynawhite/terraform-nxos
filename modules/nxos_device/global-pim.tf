resource "nxos_pim" "ALL-PIM" {
  admin_state = "enabled"
}
resource "nxos_pim_instance" "ALL-PIM-INST" {
  admin_state = "enabled"
}
resource "nxos_pim_vrf" "ALL-PIM-VRF" {
  name        = "default"
  admin_state = "enabled"
  depends_on = [ nxos_pim_instance.ALL-PIM-INST ]
}
resource "nxos_pim_ssm_policy" "ALL-PIM-SSM" {
  vrf_name = "default"
  name     = "SSM"
  depends_on = [ nxos_pim_vrf.ALL-PIM-VRF ]
}
resource "nxos_pim_ssm_range" "ALL-PIM-SSM-RNG" {
  vrf_name     = "default"
  group_list_1 = "232.0.0.0/8"
  depends_on = [ nxos_pim_ssm_policy.ALL-PIM-SSM ]
}
  resource "nxos_pim_static_rp_policy" "ALL-PIM-RPPolicy" {
  vrf_name = "default"
  name     = "RP"
  depends_on = [ nxos_pim_vrf.ALL-PIM-VRF ]
  }
  resource "nxos_pim_static_rp" "ALL-PIM-RP" {
  vrf_name = "default"
  address  = "192.168.238.238"
  depends_on = [ nxos_pim_static_rp_policy.ALL-PIM-RPPolicy ]
  }
  resource "nxos_pim_static_rp_group_list" "ALL-PIM-RP-GL" {
  vrf_name   = "default"
  rp_address = "192.168.238.238"
  address    = "224.0.0.0/4"
  depends_on = [ nxos_pim_static_rp.ALL-PIM-RP ]
  }

