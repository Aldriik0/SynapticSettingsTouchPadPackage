#!/bin/sh
echo "Removing Debian package"
rm -f counter.deb
echo "Removing relevant tmp files and directory"
rm -rf tmp
echo "Removal complete"
