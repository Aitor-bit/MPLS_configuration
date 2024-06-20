#!/bin/bash
ip l add blue type vrf table 2					# Create blue VRF
ip l set dev blue up						# Activate VRF
ip l set dev eth1 master blue					# Associate eth1 to blue
ip r add 172.30.0.0/16 encap mpls 102 via 172.23.0.2 vrf blue	# Encapsulate
ip r add 172.31.0.0/16 encap mpls 302 via 172.23.0.2 vrf blue	# Encapsulate
ip r add 172.32.0.0/16 encap mpls 402 via 172.23.0.2 vrf blue	# Encapsulate
ip -f mpls route add 205 dev blue				# Decapsulate

ip l add red type vrf table 3
ip l set dev red up
ip l set dev eth2 master red
ip r add 172.40.0.0/16 encap mpls 112 via 172.23.0.2 vrf red
ip r add 172.41.0.0/16 encap mpls 312 via 172.23.0.2 vrf red
ip r add 172.42.0.0/16 encap mpls 412 via 172.23.0.2 vrf red
ip -f mpls route add 215 dev red
/bin/bash
