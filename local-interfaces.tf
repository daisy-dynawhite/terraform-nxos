# Interfaces - LFN101

    # Interface VRF
    resource "nxos_ipv4_vrf" "LFN101-IPVRF" {
    name = "default"
    provider = nxos.LFN101
    }

    # Interface - Loopbacks
    resource "nxos_loopback_interface" "INTF-LFN101-Lo0" {
    interface_id = "lo0"
    admin_state  = "up"
    description  = "*** Underlay Lo0 ***"
    provider = nxos.LFN101
    }
    resource "nxos_loopback_interface" "INTF-LFN101-Lo10" {
    interface_id = "lo10"
    admin_state  = "up"
    description  = "***  VTEP/NVE Lo10 ***"
    provider = nxos.LFN101
    }

    # Interface - Physical
    resource "nxos_physical_interface" "INTF-LFN101-Eth1-1" {
    interface_id             = "eth1/1"
    description              = "*** LFN101 Eth1/1 - SPN201 Eth1/1"
    layer                    = "Layer3"
    medium                   = "p2p"
    provider = nxos.LFN101
    }
    resource "nxos_physical_interface" "INTF-LFN101-Eth1-2" {
    interface_id             = "eth1/2"
    description              = "*** LFN101 Eth1/2 - SPN202 Eth1/1"
    layer                    = "Layer3"
    medium                   = "p2p"
    provider = nxos.LFN101
    }

    # Interface Assignments / Addressing
    resource "nxos_ipv4_interface" "INTF-LFN101-Lo0-IPV4" {
    vrf          = "default"
    interface_id = "lo0"
    provider = nxos.LFN101
    depends_on = [ nxos_loopback_interface.INTF-LFN101-Lo0 ]
    }
    resource "nxos_ipv4_interface_address" "INTF-LFN101-Lo0-IPV4-ADDR" {
    vrf          = "default"
    interface_id = "lo0"
    address      = "192.168.0.101"
    provider = nxos.LFN101
    depends_on = [ nxos_ipv4_interface.INTF-LFN101-Lo0-IPV4 ]
    }
    resource "nxos_ipv4_interface" "INTF-LFN101-Lo10-IPV4" {
    vrf          = "default"
    interface_id = "lo10"
    provider = nxos.LFN101
    depends_on = [ nxos_loopback_interface.INTF-LFN101-Lo10 ]
    }
    resource "nxos_ipv4_interface_address" "INTF-LFN101-Lo10-IPV4-ADDR" {
    vrf          = "default"
    interface_id = "lo10"
    address      = "192.168.10.101"
    provider = nxos.LFN101
    depends_on = [ nxos_ipv4_interface.INTF-LFN101-Lo10-IPV4 ]
    }
    resource "nxos_ipv4_interface" "INTF-LFN101-Eth1-1-IPV4" {
    vrf          = "default"
    interface_id = "eth1/1"
    unnumbered = "lo0"
    provider = nxos.LFN101
    depends_on = [ nxos_physical_interface.INTF-LFN101-Eth1-1 ]
    }  
    resource "nxos_ipv4_interface" "INTF-LFN101-Eth1-2-IPV4" {
    vrf          = "default"
    interface_id = "eth1/2"
    unnumbered = "lo0"
    provider = nxos.LFN101
    depends_on = [ nxos_physical_interface.INTF-LFN101-Eth1-2 ]
    }  

# Interfaces - LFN102

    # Interface VRF
    resource "nxos_ipv4_vrf" "LFN102-IPVRF" {
    name = "default"
    provider = nxos.LFN102
    }

    # Interface Loopbacks
    resource "nxos_loopback_interface" "INTF-LFN102-Lo0" {
    interface_id = "lo0"
    admin_state  = "up"
    description  = "*** Underlay Lo0 ***"
    provider = nxos.LFN102
    }
    resource "nxos_loopback_interface" "INTF-LFN102-Lo10" {
    interface_id = "lo10"
    admin_state  = "up"
    description  = "*** VTEP/NVE Lo10 ***"
    provider = nxos.LFN102
    }

    # Interface - Physical
    resource "nxos_physical_interface" "INTF-LFN102-Eth1-1" {
    interface_id             = "eth1/1"
    description              = "*** LFN102 Eth1/1 - SPN201 Eth1/2"
    layer                    = "Layer3"
    medium                   = "p2p"
    provider = nxos.LFN102
    }
    resource "nxos_physical_interface" "INTF-LFN102-Eth1-2" {
    interface_id             = "eth1/2"
    description              = "*** LFN101 Eth1/2 - SPN202 Eth1/2"
    layer                    = "Layer3"
    medium                   = "p2p"
    provider = nxos.LFN102
    }

    # Interface Assignments / Addressing
    resource "nxos_ipv4_interface" "INTF-LFN102-Lo0-IPV4" {
    vrf          = "default"
    interface_id = "lo0"
    provider = nxos.LFN102
    depends_on = [ nxos_loopback_interface.INTF-LFN102-Lo0 ]
    }
    resource "nxos_ipv4_interface_address" "INTF-LFN102-Lo0-IPV4-ADDR" {
    vrf          = "default"
    interface_id = "lo0"
    address      = "192.168.0.102"
    provider = nxos.LFN102
    depends_on = [ nxos_ipv4_interface.INTF-LFN102-Lo0-IPV4 ]
    }
    resource "nxos_ipv4_interface" "INTF-LFN102-Lo10-IPV4" {
    vrf          = "default"
    interface_id = "lo10"
    provider = nxos.LFN102
    depends_on = [ nxos_loopback_interface.INTF-LFN102-Lo10 ]
    }
    resource "nxos_ipv4_interface_address" "INTF-LFN102-Lo10-IPV4-ADDR" {
    vrf          = "default"
    interface_id = "lo10"
    address      = "192.168.10.102"
    provider = nxos.LFN102
    depends_on = [ nxos_ipv4_interface.INTF-LFN102-Lo10-IPV4 ]
    }
    resource "nxos_ipv4_interface" "INTF-LFN102-Eth1-1-IPV4" {
    vrf          = "default"
    interface_id = "eth1/1"
    unnumbered = "lo0"
    provider = nxos.LFN102
    depends_on = [ nxos_physical_interface.INTF-LFN102-Eth1-1 ]
    }  
    resource "nxos_ipv4_interface" "INTF-LFN102-Eth1-2-IPV4" {
    vrf          = "default"
    interface_id = "eth1/2"
    unnumbered = "lo0"
    provider = nxos.LFN102
    depends_on = [ nxos_physical_interface.INTF-LFN102-Eth1-2 ]
    }  

# Interfaces - SPN201

    # Interface VRF
    resource "nxos_ipv4_vrf" "SPN201-IPVRF" {
    name = "default"
    provider = nxos.SPN201
    }

    # Interface - Loopbacks
    resource "nxos_loopback_interface" "INTF-SPN201-Lo0" {
    interface_id = "lo0"
    admin_state  = "up"
    description  = "*** Underlay Lo0 ***"
    provider = nxos.SPN201
    }
    resource "nxos_loopback_interface" "INTF-SPN201-Lo10" {
    interface_id = "lo10"
    admin_state  = "up"
    description  = "***  VTEP/NVE Lo10 ***"
    provider = nxos.SPN201
    }
    resource "nxos_loopback_interface" "INTF-SPN201-Lo100" {
    interface_id = "lo100"
    admin_state  = "up"
    description  = "***  Anycast RP - Local ***"
    provider = nxos.SPN201
    }

    # Interface - Physical
    resource "nxos_physical_interface" "INTF-SPN201-Eth1-1" {
    interface_id             = "eth1/1"
    description              = "*** SPN201 Eth1/1 - LFN101 Eth1/1"
    layer                    = "Layer3"
    medium                   = "p2p"
    provider = nxos.SPN201
    }
    resource "nxos_physical_interface" "INTF-SPN201-Eth1-2" {
    interface_id             = "eth1/2"
    description              = "*** SPN201 Eth1/2 - LFN102 Eth1/1"
    layer                    = "Layer3"
    medium                   = "p2p"
    provider = nxos.SPN201
    }

    # Interface Assignments / Addressing
    resource "nxos_ipv4_interface" "INTF-SPN201-Lo0-IPV4" {
    vrf          = "default"
    interface_id = "lo0"
    provider = nxos.SPN201
    depends_on = [ nxos_loopback_interface.INTF-SPN201-Lo0 ]
    }
    resource "nxos_ipv4_interface_address" "INTF-SPN201-Lo0-IPV4-ADDR" {
    vrf          = "default"
    interface_id = "lo0"
    address      = "192.168.0.201"
    provider = nxos.SPN201
    depends_on = [ nxos_ipv4_interface.INTF-SPN201-Lo0-IPV4 ]
    }
    resource "nxos_ipv4_interface" "INTF-SPN201-Lo10-IPV4" {
    vrf          = "default"
    interface_id = "lo10"
    provider = nxos.SPN201
    depends_on = [ nxos_loopback_interface.INTF-SPN201-Lo10 ]
    }
    resource "nxos_ipv4_interface_address" "INTF-SPN201-Lo10-IPV4-ADDR" {
    vrf          = "default"
    interface_id = "lo10"
    address      = "192.168.10.201"
    provider = nxos.SPN201
    depends_on = [ nxos_ipv4_interface.INTF-SPN201-Lo10-IPV4 ]
    }
    resource "nxos_ipv4_interface" "INTF-SPN201-Lo100-IPV4" {
    vrf          = "default"
    interface_id = "lo100"
    provider = nxos.SPN201
    depends_on = [ nxos_loopback_interface.INTF-SPN201-Lo100 ]
    }
    resource "nxos_ipv4_interface_address" "INTF-SPN201-Lo100-IPV4-ADDR" {
    vrf          = "default"
    interface_id = "lo100"
    address      = "192.168.238.201/32"
    provider = nxos.SPN201
    depends_on = [ nxos_ipv4_interface.INTF-SPN201-Lo100-IPV4 ]
    }
    resource "nxos_ipv4_interface" "INTF-SPN201-Eth1-1-IPV4" {
    vrf          = "default"
    interface_id = "eth1/1"
    unnumbered = "lo0"
    provider = nxos.SPN201
    depends_on = [ nxos_physical_interface.INTF-SPN201-Eth1-1 ]
    }  
    resource "nxos_ipv4_interface" "INTF-SPN101-Eth1-2-IPV4" {
    vrf          = "default"
    interface_id = "eth1/2"
    unnumbered = "lo0"
    provider = nxos.SPN201
    depends_on = [ nxos_physical_interface.INTF-SPN201-Eth1-2 ]
    }  

