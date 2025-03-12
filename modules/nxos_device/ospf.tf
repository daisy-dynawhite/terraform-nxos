resource "nxos_ospf" "ospf" {
  admin_state = "enabled"
}
resource "nxos_ospf_instance" "ospf-inst" {
  admin_state = "enabled"
  name        = "underlay"
  depends_on = [ nxos_ospf.ospf ]
}