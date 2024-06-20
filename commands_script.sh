# Install kmod
apt install kmod

# Load kernel modules
modprobe mpls_router
modprobe mpls_iptunnel
modprobe mpls_gso
modprobe dummy

# Write in the MPLS load file, so that it loads some modules automatically each time the system is started
cat >/etc/modules-load.d/mpls.conf <<EOF
mpls_router
mpls_iptunnel
mpls_gso
dummy
EOF

# Write in the MPLS config file some necessary configurations
cat >/etc/sysctl.d/90-mpls-router.conf <<EOF
net.ipv4.ip_forward=1
net.ipv4.conf.all.rp_filter=0
net.mpls.platform_labels=1048575
net.ipv4.tcp_l3mdev_accept=1
net.ipv4.udp_l3mdev_accept=1
net.mpls.conf.lo.input=1
EOF

# Apply these changes
sysctl -p /etc/sysctl.d/90-mpls-router.conf
