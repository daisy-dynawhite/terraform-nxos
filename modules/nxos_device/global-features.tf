resource "nxos_feature_bgp" "bgp" {
  admin_state = "enabled"
}
resource "nxos_feature_pim" "pim" {
  admin_state = "enabled"
}
resource "nxos_feature_evpn" "evpn" {
  admin_state = "enabled"
}
resource "nxos_feature_nv_overlay" "nvoverlay" {
  admin_state = "enabled"
}
resource "nxos_feature_ospf" "ospf" {
  admin_state = "enabled"
}
resource "nxos_feature_vn_segment" "vnseg" {
  admin_state = "enabled"
}
resource "nxos_feature_interface_vlan" "ivlan" {
  admin_state = "enabled"
}
resource "nxos_feature_hmm" "fabric-forwarding" {
  admin_state = "enabled"
}