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
    resource "nxos_loopback_interface" "INTF-LFN101-Lo100" {
    interface_id = "lo100"
    admin_state  = "up"
    description  = "***  BGP Lo100 ***"
    provider = nxos.LFN101
    }
    resource "nxos_svi_interface" "INTF-LFN101-VLAN10" {
    interface_id = "vlan10"
    admin_state  = "up"
    description  = "*** VLAN10 - CUST01 - SVI"    
    mtu          = 9216
    provider = nxos.LFN101
    }
    resource "nxos_svi_interface" "INTF-LFN101-VLAN11" {
    interface_id = "vlan11"
    admin_state  = "up"
    description  = "*** VLAN11 - CUST01 - L3VNI"    
    mtu          = 9216
    provider = nxos.LFN101
    }
    resource "nxos_svi_interface_vrf" "INTF-LFN101-VLAN10" {
    interface_id = "vlan10"
    vrf_dn       = "sys/inst-VRF-CUST01"
    provider = nxos.LFN101
    } 
    resource "nxos_ipv4_interface" "INTF-LFN101-VLAN10-IP" {
    vrf          = "VRF-CUST01"
    interface_id = "vlan10"
    provider = nxos.LFN101
    }
    resource "nxos_ipv4_interface_address" "INTF-LFN101-VLAN10-IPV4-ADDR" {
    vrf          = "VRF-CUST01"
    interface_id = "vlan10"
    address      = "192.168.10.1/28"
    provider = nxos.LFN101
    }
    resource "nxos_hmm_interface" "INTF-LFN101-VLAN10-HMM" {
    interface_id = "vlan10"
    admin_state  = "enabled"
    mode         = "anycastGW"
    provider = nxos.LFN101
    }
    resource "nxos_svi_interface_vrf" "INTF-LFN101-VLAN11" {
    interface_id = "vlan11"
    vrf_dn       = "sys/inst-VRF-CUST01"
    provider = nxos.LFN101
    } 
    resource "nxos_ipv4_interface" "INTF-LFN101-VLAN11-IP" {
    vrf          = "VRF-CUST01"
    interface_id = "vlan11"
    forward      = "enabled"
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
    resource "nxos_ipv4_interface" "INTF-LFN101-Lo100-IPV4" {
    vrf          = "default"
    interface_id = "lo100"
    provider = nxos.LFN101
    depends_on = [ nxos_loopback_interface.INTF-LFN101-Lo100 ]
    }
    resource "nxos_ipv4_interface_address" "INTF-LFN101-Lo100-IPV4-ADDR" {
    vrf          = "default"
    interface_id = "lo100"
    address      = "192.168.100.101"
    provider = nxos.LFN101
    depends_on = [ nxos_ipv4_interface.INTF-LFN101-Lo100-IPV4 ]
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
    resource "nxos_loopback_interface" "INTF-LFN102-Lo100" {
    interface_id = "lo100"
    admin_state  = "up"
    description  = "*** BGP Lo100 ***"
    provider = nxos.LFN102
    }
    resource "nxos_svi_interface" "INTF-LFN102-VLAN10" {
    interface_id = "vlan10"
    admin_state  = "up"
    description  = "*** VLAN10 - CUST01 - SVI"    
    mtu          = 9216
    provider = nxos.LFN102
    }
    resource "nxos_svi_interface" "INTF-LFN102-VLAN11" {
    interface_id = "vlan11"
    admin_state  = "up"
    description  = "*** VLAN11 - CUST01 - L3VNI"    
    mtu          = 9216
    provider = nxos.LFN102
    }
    resource "nxos_svi_interface_vrf" "INTF-LFN102-VLAN11" {
    interface_id = "vlan11"
    vrf_dn       = "sys/inst-VRF-CUST01"
    provider = nxos.LFN102
    } 
    resource "nxos_svi_interface_vrf" "INTF-LFN102-VLAN10" {
    interface_id = "vlan10"
    vrf_dn       = "sys/inst-VRF-CUST01"
    provider = nxos.LFN102
    } 
    resource "nxos_ipv4_interface" "INTF-LFN102-VLAN10-IP" {
    vrf          = "VRF-CUST01"
    interface_id = "vlan10"
    provider = nxos.LFN102
    }
    resource "nxos_ipv4_interface_address" "INTF-LFN102-VLAN10-IPV4-ADDR" {
    vrf          = "VRF-CUST01"
    interface_id = "vlan10"
    address      = "192.168.10.1/28"
    provider = nxos.LFN102
    }
    resource "nxos_hmm_interface" "INTF-LFN102-VLAN10-HMM" {
    interface_id = "vlan10"
    admin_state  = "enabled"
    mode         = "anycastGW"
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
    resource "nxos_ipv4_interface" "INTF-LFN102-Lo100-IPV4" {
    vrf          = "default"
    interface_id = "lo100"
    provider = nxos.LFN102
    depends_on = [ nxos_loopback_interface.INTF-LFN102-Lo100 ]
    }
    resource "nxos_ipv4_interface_address" "INTF-LFN102-Lo100-IPV4-ADDR" {
    vrf          = "default"
    interface_id = "lo100"
    address      = "192.168.100.102"
    provider = nxos.LFN102
    depends_on = [ nxos_ipv4_interface.INTF-LFN102-Lo100-IPV4 ]
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
    description  = "***  BGP Lo100 ***"
    provider = nxos.SPN201
    }
    resource "nxos_loopback_interface" "INTF-SPN201-Lo238" {
    interface_id = "lo238"
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
    address      = "192.168.100.201"
    provider = nxos.SPN201
    depends_on = [ nxos_ipv4_interface.INTF-SPN201-Lo100-IPV4 ]
    }
    resource "nxos_ipv4_interface" "INTF-SPN201-Lo238-IPV4" {
    vrf          = "default"
    interface_id = "lo238"
    provider = nxos.SPN201
    depends_on = [ nxos_loopback_interface.INTF-SPN201-Lo238 ]
    }
    resource "nxos_ipv4_interface_address" "INTF-SPN201-Lo238-IPV4-ADDR" {
    vrf          = "default"
    interface_id = "lo238"
    address      = "192.168.238.201/32"
    provider = nxos.SPN201
    depends_on = [ nxos_ipv4_interface.INTF-SPN201-Lo238-IPV4 ]
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

