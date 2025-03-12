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
# EVPN - LFN-101 - VNI10020
    resource "nxos_evpn_vni" "LFN101-L2VNI-10020" {
    encap               = "vxlan-10020"
    route_distinguisher = "rd:unknown:0:0"
    provider = nxos.LFN101
    }
    resource "nxos_evpn_vni_route_target_direction" "LFN101-L2VNI-10020-RTDI" {
    encap     = "vxlan-10020"
    direction = "import"
    provider = nxos.LFN101
    depends_on = [ nxos_evpn_vni.LFN101-L2VNI-10020 ]
    }
    resource "nxos_evpn_vni_route_target_direction" "LFN101-L2VNI-10020-RTDE" {
    encap     = "vxlan-10020"
    direction = "export"
    provider = nxos.LFN101
    depends_on = [ nxos_evpn_vni.LFN101-L2VNI-10020 ]
    }
    resource "nxos_evpn_vni_route_target" "LFN101-L2VNI-10020-RTI" {
    encap        = "vxlan-10020"
    direction    = "import"
    route_target = "route-target:unknown:0:0"
    provider = nxos.LFN101
    depends_on = [ nxos_evpn_vni_route_target_direction.LFN101-L2VNI-10020-RTDI ]
    }
    resource "nxos_evpn_vni_route_target" "LFN101-L2VNI-10020-RTE" {
    encap        = "vxlan-10020"
    direction    = "export"
    route_target = "route-target:unknown:0:0"
    provider = nxos.LFN101
    depends_on = [ nxos_evpn_vni_route_target_direction.LFN101-L2VNI-10020-RTDE ]
    }

# EVPN - LFN-102 - VNI10010
    resource "nxos_evpn_vni" "LFN102-L2VNI-10010" {
    encap               = "vxlan-10010"
    route_distinguisher = "rd:unknown:0:0"
    provider = nxos.LFN102
    }
    resource "nxos_evpn_vni_route_target_direction" "LFN102-L2VNI-10010-RTDI" {
    encap     = "vxlan-10010"
    direction = "import"
    provider = nxos.LFN102
    depends_on = [ nxos_evpn_vni.LFN102-L2VNI-10010 ]
    }
    resource "nxos_evpn_vni_route_target_direction" "LFN102-L2VNI-10010-RTDE" {
    encap     = "vxlan-10010"
    direction = "export"
    provider = nxos.LFN102
    depends_on = [ nxos_evpn_vni.LFN102-L2VNI-10010 ]
    }
    resource "nxos_evpn_vni_route_target" "LFN102-L2VNI-10010-RTI" {
    encap        = "vxlan-10010"
    direction    = "import"
    route_target = "route-target:unknown:0:0"
    provider = nxos.LFN102
    depends_on = [ nxos_evpn_vni_route_target_direction.LFN102-L2VNI-10010-RTDI ]
    }
    resource "nxos_evpn_vni_route_target" "LFN102-L2VNI-10010-RTE" {
    encap        = "vxlan-10010"
    direction    = "export"
    route_target = "route-target:unknown:0:0"
    provider = nxos.LFN102
    depends_on = [ nxos_evpn_vni_route_target_direction.LFN102-L2VNI-10010-RTDE ]
    }
# EVPN - LFN-102 - VNI10020
    resource "nxos_evpn_vni" "LFN102-L2VNI-10020" {
    encap               = "vxlan-10020"
    route_distinguisher = "rd:unknown:0:0"
    provider = nxos.LFN102
    }
    resource "nxos_evpn_vni_route_target_direction" "LFN102-L2VNI-10020-RTDI" {
    encap     = "vxlan-10020"
    direction = "import"
    provider = nxos.LFN102
    depends_on = [ nxos_evpn_vni.LFN102-L2VNI-10020 ]
    }
    resource "nxos_evpn_vni_route_target_direction" "LFN102-L2VNI-10020-RTDE" {
    encap     = "vxlan-10020"
    direction = "export"
    provider = nxos.LFN102
    depends_on = [ nxos_evpn_vni.LFN102-L2VNI-10020 ]
    }
    resource "nxos_evpn_vni_route_target" "LFN102-L2VNI-10020-RTI" {
    encap        = "vxlan-10020"
    direction    = "import"
    route_target = "route-target:unknown:0:0"
    provider = nxos.LFN102
    depends_on = [ nxos_evpn_vni_route_target_direction.LFN102-L2VNI-10020-RTDI ]
    }
    resource "nxos_evpn_vni_route_target" "LFN102-L2VNI-10020-RTE" {
    encap        = "vxlan-10020"
    direction    = "export"
    route_target = "route-target:unknown:0:0"
    provider = nxos.LFN102
    depends_on = [ nxos_evpn_vni_route_target_direction.LFN102-L2VNI-10020-RTDE ]
    }