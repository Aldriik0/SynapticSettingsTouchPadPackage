#!/bin/sh

echo "Copying service file to /lib/systemd/system"
sudo cp bin/synaptics.service /lib/systemd/system

echo "Running build-deb.sh"
./build-deb.sh

echo "Installing deb file with dpkg"
sudo dpkg -i synaptics.deb

echo "Full install complete!"