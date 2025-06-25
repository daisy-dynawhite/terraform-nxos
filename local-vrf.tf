# VRF - LFN101
    resource "nxos_vrf" "VRF-CUST1-LFN101" {
    name        = "VRF-CUST01"
    description = "*** VRF - CUST01 ***"
    encap       = "vxlan-10011"
    provider = nxos.LFN101
    }
    resource "nxos_vrf_routing" "VRF-CUST1-LFN101-Routing" {
    vrf                 = "VRF-CUST01"
    route_distinguisher = "rd:unknown:0:0"
    provider = nxos.LFN101
    }
    resource "nxos_vrf_address_family" "VRF-CUST1-LFN101-AF" {
    vrf            = "VRF-CUST01"
    address_family = "ipv4-ucast"
    provider = nxos.LFN101
    }
    resource "nxos_vrf_route_target_address_family" "VRF-CUST1-LFN101-RT-AF" {
    vrf                         = "VRF-CUST01"
    address_family              = "ipv4-ucast"
    route_target_address_family = "ipv4-ucast"
    provider = nxos.LFN101
    }
    resource "nxos_vrf_route_target_address_family" "VRF-CUST1-LFN101-RT-EVPN-AF" {
    vrf                         = "VRF-CUST01"
    address_family              = "ipv4-ucast"
    route_target_address_family = "l2vpn-evpn"
    provider = nxos.LFN101
    }
    resource "nxos_vrf_route_target_direction" "VRF-CUST1-LFN101-RT-Dir-Import" {
    vrf                         = "VRF-CUST01"
    address_family              = "ipv4-ucast"
    route_target_address_family = "ipv4-ucast"
    direction                   = "import"
    provider = nxos.LFN101
    }
    resource "nxos_vrf_route_target_direction" "VRF-CUST1-LFN101-RT-Dir-Export" {
    vrf                         = "VRF-CUST01"
    address_family              = "ipv4-ucast"
    route_target_address_family = "ipv4-ucast"
    direction                   = "export"
    provider = nxos.LFN101
    }
        resource "nxos_vrf_route_target_direction" "VRF-CUST1-LFN101-RT-EVPN-Dir-Import" {
    vrf                         = "VRF-CUST01"
    address_family              = "ipv4-ucast"
    route_target_address_family = "l2vpn-evpn"
    direction                   = "import"
    provider = nxos.LFN101
    }
    resource "nxos_vrf_route_target_direction" "VRF-CUST1-LFN101-RT-EVPN-Dir-Export" {
    vrf                         = "VRF-CUST01"
    address_family              = "ipv4-ucast"
    route_target_address_family = "l2vpn-evpn"
    direction                   = "export"
    provider = nxos.LFN101
    }
    resource "nxos_vrf_route_target" "VRF-CUST1-LFN101-RT" {
    vrf                         = "VRF-CUST01"
    address_family              = "ipv4-ucast"
    route_target_address_family = "ipv4-ucast"
    direction                   = "import"
    route_target                = "route-target:unknown:0:0"
    provider = nxos.LFN101
    }
    resource "nxos_vrf_route_target" "VRF-CUST1-LFN101-RT-EVPN" {
    vrf                         = "VRF-CUST01"
    address_family              = "ipv4-ucast"
    route_target_address_family = "l2vpn-evpn"
    direction                   = "import"
    route_target                = "route-target:unknown:0:0"
    provider = nxos.LFN101
    }

# VRF - LFN102
    resource "nxos_vrf" "VRF-CUST1-LFN102" {
    name        = "VRF-CUST01"
    description = "*** VRF - CUST01 ***"
    encap       = "vxlan-10011"
    provider = nxos.LFN102
    }
    resource "nxos_vrf_routing" "VRF-CUST1-LFN102-Routing" {
    vrf                 = "VRF-CUST01"
    route_distinguisher = "rd:unknown:0:0"
    provider = nxos.LFN102
    }
    resource "nxos_vrf_address_family" "VRF-CUST1-LFN102-AF" {
    vrf            = "VRF-CUST01"
    address_family = "ipv4-ucast"
    provider = nxos.LFN102
    }
    resource "nxos_vrf_route_target_address_family" "VRF-CUST1-LFN102-RT-AF" {
    vrf                         = "VRF-CUST01"
    address_family              = "ipv4-ucast"
    route_target_address_family = "ipv4-ucast"
    provider = nxos.LFN102
    }
    resource "nxos_vrf_route_target_address_family" "VRF-CUST1-LFN102-RT-EVPN-AF" {
    vrf                         = "VRF-CUST01"
    address_family              = "ipv4-ucast"
    route_target_address_family = "l2vpn-evpn"
    provider = nxos.LFN102
    }
    resource "nxos_vrf_route_target_direction" "VRF-CUST1-LFN102-RT-Dir-Import" {
    vrf                         = "VRF-CUST01"
    address_family              = "ipv4-ucast"
    route_target_address_family = "ipv4-ucast"
    direction                   = "import"
    provider = nxos.LFN102
    }
    resource "nxos_vrf_route_target_direction" "VRF-CUST1-LFN102-RT-Dir-Export" {
    vrf                         = "VRF-CUST01"
    address_family              = "ipv4-ucast"
    route_target_address_family = "ipv4-ucast"
    direction                   = "export"
    provider = nxos.LFN102
    }
        resource "nxos_vrf_route_target_direction" "VRF-CUST1-LFN102-RT-EVPN-Dir-Import" {
    vrf                         = "VRF-CUST01"
    address_family              = "ipv4-ucast"
    route_target_address_family = "l2vpn-evpn"
    direction                   = "import"
    provider = nxos.LFN102
    }
    resource "nxos_vrf_route_target_direction" "VRF-CUST1-LFN102-RT-EVPN-Dir-Export" {
    vrf                         = "VRF-CUST01"
    address_family              = "ipv4-ucast"
    route_target_address_family = "l2vpn-evpn"
    direction                   = "export"
    provider = nxos.LFN102
    }
    resource "nxos_vrf_route_target" "VRF-CUST1-LFN102-RT" {
    vrf                         = "VRF-CUST01"
    address_family              = "ipv4-ucast"
    route_target_address_family = "ipv4-ucast"
    direction                   = "import"
    route_target                = "route-target:unknown:0:0"
    provider = nxos.LFN102
    }
    resource "nxos_vrf_route_target" "VRF-CUST1-LFN102-RT-EVPN" {
    vrf                         = "VRF-CUST01"
    address_family              = "ipv4-ucast"
    route_target_address_family = "l2vpn-evpn"
    direction                   = "import"
    route_target                = "route-target:unknown:0:0"
    provider = nxos.LFN102
    }