# EVPN - LFN-101 - VNI10010
    resource "nxos_evpn_vni" "LFN101-L2VNI-10010" {
    encap               = "vxlan-10010"
    route_distinguisher = "rd:unknown:0:0"
    provider = nxos.LFN101
    }
    resource "nxos_evpn_vni_route_target_direction" "LFN101-L2VNI-10010-RTDI" {
    encap     = "vxlan-10010"
    direction = "import"
    provider = nxos.LFN101
    depends_on = [ nxos_evpn_vni.LFN101-L2VNI-10010 ]
    }
    resource "nxos_evpn_vni_route_target_direction" "LFN101-L2VNI-10010-RTDE" {
    encap     = "vxlan-10010"
    direction = "export"
    provider = nxos.LFN101
    depends_on = [ nxos_evpn_vni.LFN101-L2VNI-10010 ]
    }
    resource "nxos_evpn_vni_route_target" "LFN101-L2VNI-10010-RTI" {
    encap        = "vxlan-10010"
    direction    = "import"
    route_target = "route-target:unknown:0:0"
    provider = nxos.LFN101
    depends_on = [ nxos_evpn_vni_route_target_direction.LFN101-L2VNI-10010-RTDI ]
    }
    resource "nxos_evpn_vni_route_target" "LFN101-L2VNI-10010-RTE" {
    encap        = "vxlan-10010"
    direction    = "export"
    route_target = "route-target:unknown:0:0"
    provider = nxos.LFN101
    depends_on = [ nxos_evpn_vni_route_target_direction.LFN101-L2VNI-10010-RTDE ]
    }