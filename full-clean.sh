#!/bin/sh

echo "Removing service file"
sudo rm /lib/systemd/system/synaptics.service

echo "Uninstalling deb package"
sudo dpkg -r synaptics

echo "Running clean.sh"
./clean.sh

echo "Full clean complete!"