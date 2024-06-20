#!/bin/bash
ip r add 172.40.0.0/16 via 172.42.0.2	# Add route
ip r add 172.41.0.0/16 via 172.42.0.2
ip r add 172.43.0.0/16 via 172.42.0.2
/bin/bash
