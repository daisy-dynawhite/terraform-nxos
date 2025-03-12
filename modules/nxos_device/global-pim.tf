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


