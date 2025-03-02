#!/bin/sh

TEMP_DIR=tmp

echo "Starting deb package build"

echo "Making tmp directory tree"
mkdir -p $TEMP_DIR
mkdir -p $TEMP_DIR/etc
mkdir -p $TEMP_DIR/usr/bin
mkdir -p $TEMP_DIR/usr/share
mkdir -p $TEMP_DIR/usr/share/doc/
mkdir -p $TEMP_DIR/usr/share/doc/synaptics
mkdir -p $TEMP_DIR/DEBIAN

echo "Copy control files for DEBIAN"
cp src/DEBIAN/control $TEMP_DIR/DEBIAN

echo "conffiles setup for DEBIAN/"
cp src/DEBIAN/conffiles $TEMP_DIR/DEBIAN

echo "Copy binary into place"
cp src/synaptics.sh $TEMP_DIR/usr/bin

echo "Configuration file into place"
cp src/synaptics.conf $TEMP_DIR/etc

echo "Copying documentation"
cp src/usr/share/doc/synaptics/changelog.gz $TEMP_DIR/usr/share/doc/synaptics
cp src/usr/share/doc/synaptics/copyright $TEMP_DIR/usr/share/doc/synaptics

echo "Building deb file"
dpkg-deb --root-owner-group --build $TEMP_DIR
mv $TEMP_DIR.deb synaptics.deb


echo "Complete."
