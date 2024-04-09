#!/bin/bash

# Ensure script is executable
# chmod +x dns-vykix.sh

# Backup original resolv.conf
if sudo cp /etc/resolv.conf /etc/resolv.conf.backup; then
    echo "Backup of resolv.conf created successfully."
else
    echo "Failed to backup resolv.conf. Exiting."
    exit 1
fi

# Create a new resolv.conf file with the specified DNS servers
if echo "nameserver 193.25.252.254" | sudo tee /etc/resolv.conf > /dev/null; then
    echo "nameserver 193.25.252.254 added to resolv.conf successfully."
else
    echo "Failed to add nameserver to resolv.conf. Exiting."
    exit 1
fi

# Restart networking service to apply changes
if sudo systemctl restart systemd-resolved.service; then
    echo "Networking service restarted successfully."
else
    echo "Failed to restart networking service. Exiting."
    exit 1
fi

echo "Primary DNS: 193.25.252.254"
