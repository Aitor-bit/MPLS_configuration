#!/bin/bash
ip l add blue type vrf table 2					# Crear VRF blue
ip l set dev blue up						# Activar VRF
ip l set dev eth1 master blue					# Asociar eth1 a blue
ip r add 172.31.0.0/16 encap mpls 302 via 172.20.0.2 vrf blue	# Encaupsular
ip r add 172.32.0.0/16 encap mpls 402 via 172.20.0.2 vrf blue	# Encaupsular
ip r add 172.33.0.0/16 encap mpls 502 via 172.20.0.2 vrf blue	# Encaupsular
ip -f mpls route add 201 dev blue				# Desencapsular

ip l add red type vrf table 3
ip l set dev red up
ip l set dev eth2 master red
ip r add 172.41.0.0/16 encap mpls 312 via 172.20.0.2 vrf red
ip r add 172.42.0.0/16 encap mpls 412 via 172.20.0.2 vrf red
ip r add 172.43.0.0/16 encap mpls 512 via 172.20.0.2 vrf red
ip -f mpls route add 211 dev red
/bin/bash
