# PIM - LFN-101
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
    resource "nxos_pim_interface" "LFN101-PIM-Lo100" {
    vrf_name     = "default"
    interface_id = "lo100"
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

# PIM - LFN-102
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
    resource "nxos_pim_interface" "LFN102-PIM-Lo100" {
    vrf_name     = "default"
    interface_id = "lo100"
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

# PIM - SPN-201
    resource "nxos_pim_interface" "SPN201-PIM-Lo0" {
    vrf_name     = "default"
    interface_id = "lo0"
    admin_state  = "enabled"
    sparse_mode  = true
    provider = nxos.SPN201
    }
    resource "nxos_pim_interface" "SPN102-PIM-Lo10" {
    vrf_name     = "default"
    interface_id = "lo10"
    admin_state  = "enabled"
    sparse_mode  = true
    provider = nxos.SPN201
    }
    resource "nxos_pim_interface" "SPN102-PIM-Lo100" {
    vrf_name     = "default"
    interface_id = "lo10"
    admin_state  = "enabled"
    sparse_mode  = true
    provider = nxos.SPN201
    }
    resource "nxos_pim_interface" "SPN102-PIM-Lo238" {
    vrf_name     = "default"
    interface_id = "lo238"
    admin_state  = "enabled"
    sparse_mode  = true
    provider = nxos.SPN201
    }
    resource "nxos_pim_interface" "SPN201-PIM-Eth1-1" {
    vrf_name     = "default"
    interface_id = "eth1/1"
    admin_state  = "enabled"
    sparse_mode  = true
    provider = nxos.SPN201
    }
    resource "nxos_pim_interface" "SPN201-PIM-Eth1-2" {
    vrf_name     = "default"
    interface_id = "eth1/2"
    admin_state  = "enabled"
    sparse_mode  = true
    provider = nxos.SPN201
    }
    resource "nxos_pim_anycast_rp" "SPN201-PIM-ACAST-RP" {
    vrf_name         = "default"
    local_interface = "loopback238"
    source_interface = "loopback238"
    provider = nxos.SPN201
    }
    resource "nxos_pim_anycast_rp_peer" "SPN201-PIM-ACAST-RPPeer1" {
    vrf_name       = "default"
    address        = "192.168.238.238/32"
    rp_set_address = "192.168.238.201/32"
    provider = nxos.SPN201
    depends_on = [ nxos_pim_anycast_rp.SPN201-PIM-ACAST-RP ]
    }
    resource "nxos_pim_anycast_rp_peer" "SPN201-PIM-ACAST-RPPeer2" {
    vrf_name       = "default"
    address        = "192.168.238.238/32"
    rp_set_address = "192.168.238.202/32"
    provider = nxos.SPN201
    depends_on = [ nxos_pim_anycast_rp.SPN201-PIM-ACAST-RP ]
    }