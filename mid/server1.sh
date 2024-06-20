#!/bin/bash
ip r add 172.30.0.0/16 via 172.31.0.2	# Add route
ip r add 172.32.0.0/16 via 172.31.0.2
ip r add 172.33.0.0/16 via 172.31.0.2
/bin/bash
