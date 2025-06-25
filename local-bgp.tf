# BGP - LFN-101 
    resource "nxos_bgp_vrf" "BGP-VRF-LFN101" {
    asn       = "65000"
    name      = "default"
    router_id = "192.168.100.101"
    provider = nxos.LFN101
    }

    resource "nxos_bgp_peer" "BGP-Peer-LFN101-SPN201" {
    asn               = "65000"
    vrf               = "default"
    address           = "192.168.100.201"
    remote_asn        = "65000"
    source_interface  = "lo100"
    provider = nxos.LFN101    
    }

    resource "nxos_bgp_peer_address_family" "BGP-AF-LFN101-SPN201" {
    asn                     = "65000"
    vrf                     = "default"
    address                 = "192.168.100.201"
    address_family          = "l2vpn-evpn"
    send_community_extended = "enabled"
    provider = nxos.LFN101
    }


# BGP - LFN-102
    resource "nxos_bgp_vrf" "BGP-VRF-LFN102" {
    asn       = "65000"
    name      = "default"
    router_id = "192.168.100.102"
    provider = nxos.LFN102
    }

    resource "nxos_bgp_peer" "BGP-Peer-LFN102-SPN201" {
    asn               = "65000"
    vrf               = "default"
    address           = "192.168.100.201"
    remote_asn        = "65000"
    source_interface  = "lo100"
    provider = nxos.LFN102    
    }

    resource "nxos_bgp_peer_address_family" "BGP-AF-LFN102-SPN201" {
    asn                     = "65000"
    vrf                     = "default"
    address                 = "192.168.100.201"
    address_family          = "l2vpn-evpn"
    send_community_extended = "enabled"
    provider = nxos.LFN102
    }

# BGP - SPN-201
    resource "nxos_bgp_vrf" "BGP-VRF-SPN201" {
    asn       = "65000"
    name      = "default"
    router_id = "192.168.100.201"
    provider = nxos.SPN201
    }

    resource "nxos_bgp_peer" "BGP-Peer-SPN201-LFN101" {
    asn               = "65000"
    vrf               = "default"
    address           = "192.168.100.101"
    remote_asn        = "65000"
    source_interface  = "lo100"
    provider = nxos.SPN201    
    }

    resource "nxos_bgp_peer" "BGP-Peer-SPN201-LFN102" {
    asn               = "65000"
    vrf               = "default"
    address           = "192.168.100.102"
    remote_asn        = "65000"
    source_interface  = "lo100"
    provider = nxos.SPN201    
    }
    resource "nxos_bgp_peer_address_family" "BGP-AF-SPN201-LFN101" {
    asn                     = "65000"
    vrf                     = "default"
    address                 = "192.168.100.101"
    address_family          = "l2vpn-evpn"
    send_community_extended = "enabled"
    provider = nxos.SPN201
    }

    resource "nxos_bgp_peer_address_family" "BGP-AF-SPN201-LFN102" {
    asn                     = "65000"
    vrf                     = "default"
    address                 = "192.168.100.102"
    address_family          = "l2vpn-evpn"
    send_community_extended = "enabled"
    provider = nxos.SPN201
    }