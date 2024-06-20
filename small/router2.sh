#!/bin/bash
ip -f mpls route add 102 as 201 via inet 172.20.0.3	# Label switch
ip -f mpls route add 302 as 203 via inet 172.21.0.3

ip -f mpls route add 112 as 211 via inet 172.20.0.3
ip -f mpls route add 312 as 213 via inet 172.21.0.3

/bin/bash
