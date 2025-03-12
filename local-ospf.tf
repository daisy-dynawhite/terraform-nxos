# OSPF - LFN-101
    resource "nxos_ospf_vrf" "LFN101-ospf-vrf" {
    instance_name            = "underlay"
    name                     = "default"
    admin_state              = "enabled"
    router_id                = "192.168.0.101"
    provider = nxos.LFN101
    }

    resource "nxos_ospf_interface" "LFN101-ospf-Lo0" {
    instance_name         = "underlay"
    vrf_name              = "default"
    interface_id          = "lo0"
    area                  = "0.0.0.0"
    network_type          = "p2p"
    provider = nxos.LFN101
    depends_on = [ nxos_ospf_vrf.LFN101-ospf-vrf ]
    }
    resource "nxos_ospf_interface" "LFN101-ospf-Eth1-1" {
    instance_name         = "underlay"
    vrf_name              = "default"
    interface_id          = "eth1/1"
    area                  = "0.0.0.0"
    network_type          = "p2p"
    provider = nxos.LFN101
    depends_on = [ nxos_ospf_vrf.LFN101-ospf-vrf ]
    }
    resource "nxos_ospf_interface" "LFN101-ospf-Eth1-2" {
    instance_name         = "underlay"
    vrf_name              = "default"
    interface_id          = "eth1/2"
    area                  = "0.0.0.0"
    network_type          = "p2p"
    provider = nxos.LFN101
    depends_on = [ nxos_ospf_vrf.LFN101-ospf-vrf ]
    }

# OSPF - LFN-102

    resource "nxos_ospf_vrf" "LFN102-ospf-vrf" {
    instance_name            = "underlay"
    name                     = "default"
    admin_state              = "enabled"
    router_id                = "192.168.0.102"
    provider = nxos.LFN102
    }
    resource "nxos_ospf_interface" "LFN102-ospf-Lo0" {
    instance_name         = "underlay"
    vrf_name              = "default"
    interface_id          = "lo0"
    area                  = "0.0.0.0"
    network_type          = "p2p"
    provider = nxos.LFN102
    depends_on = [ nxos_ospf_vrf.LFN102-ospf-vrf ]
    }
    resource "nxos_ospf_interface" "LFN102-ospf-Eth1-1" {
    instance_name         = "underlay"
    vrf_name              = "default"
    interface_id          = "eth1/1"
    area                  = "0.0.0.0"
    network_type          = "p2p"
    provider = nxos.LFN102
    depends_on = [ nxos_ospf_vrf.LFN101-ospf-vrf ]
    }
    resource "nxos_ospf_interface" "LFN102-ospf-Eth1-2" {
    instance_name         = "underlay"
    vrf_name              = "default"
    interface_id          = "eth1/2"
    area                  = "0.0.0.0"
    network_type          = "p2p"
    provider = nxos.LFN102
    depends_on = [ nxos_ospf_vrf.LFN102-ospf-vrf ]
    }

