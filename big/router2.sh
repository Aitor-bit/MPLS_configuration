#!/bin/bash
ip -f mpls route add 102 as 201 via inet 172.20.0.3	# Label switch
ip -f mpls route add 302 as 203 via inet 172.21.0.3
ip -f mpls route add 402 as 204 via inet 172.22.0.3
ip -f mpls route add 502 as 205 via inet 172.23.0.3

ip -f mpls route add 112 as 211 via inet 172.20.0.3
ip -f mpls route add 312 as 213 via inet 172.21.0.3
ip -f mpls route add 412 as 214 via inet 172.22.0.3
ip -f mpls route add 512 as 215 via inet 172.23.0.3

/bin/bash
