# NVE - LFN-101
resource "nxos_nve_interface" "LFN101-NVE-INTF" {
  admin_state                      = "enabled"
  host_reachability_protocol       = "bgp"
  source_interface                 = "lo10"
  provider = nxos.LFN101
}
resource "nxos_nve_vni_container" "LFN101-NVE-VNI-CONT" {
    depends_on = [ nxos_nve_interface.LFN101-NVE-INTF ]
    provider = nxos.LFN101
}
resource "nxos_nve_vni" "LFN101-NVE-VNI10010" {
  vni                           = 10010
  multicast_group               = "238.0.0.10"
  provider = nxos.LFN101
}
resource "nxos_nve_vni" "LFN101-NVE-VNI10020" {
  vni                           = 10020
  multicast_group               = "238.0.0.20"
  provider = nxos.LFN101
}

# NVE - LFN-102
resource "nxos_nve_interface" "LFN102-NVE-INTF" {
  admin_state                      = "enabled"
  host_reachability_protocol       = "bgp"
  source_interface                 = "lo10"
  provider = nxos.LFN102
}
resource "nxos_nve_vni_container" "LFN102-NVE-VNI-CONT" {
    depends_on = [ nxos_nve_interface.LFN102-NVE-INTF ]
    provider = nxos.LFN102
}
resource "nxos_nve_vni" "LFN102-NVE-VNI10010" {
  vni                           = 10010
  multicast_group               = "238.0.0.10"
  provider = nxos.LFN102
}
resource "nxos_nve_vni" "LFN102-NVE-VNI10020" {
  vni                           = 10020
  multicast_group               = "238.0.0.20"
  provider = nxos.LFN102
}