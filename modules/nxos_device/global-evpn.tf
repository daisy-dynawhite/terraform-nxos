resource "nxos_evpn" "ALL-EVPN" {
  admin_state = "enabled"
}

# Global HMM
resource "nxos_hmm" "ALL-HMM" {
  admin_state = "enabled"
}
resource "nxos_hmm_instance" "ALL-HMM-ACM" {
  admin_state = "enabled"
  anycast_mac = "00:01:00:01:00:01"
}