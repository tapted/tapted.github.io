#!/bin/bash

# Define the path to your espuck build directory
BUILD_DIR="../../espuck/build"

# Verify the build directory exists before proceeding
if [ ! -d "$BUILD_DIR" ]; then
  echo "Error: Build directory $BUILD_DIR not found."
  exit 1
fi

echo "Staging espuck firmware files for Web Flasher..."

# Copy the 5 specific files required by the multi-part manifest
cp "$BUILD_DIR/bootloader/bootloader.bin" .
cp "$BUILD_DIR/partition_table/partition-table.bin" .
cp "$BUILD_DIR/ota_data_initial.bin" .
cp "$BUILD_DIR/espuck.bin" .
cp "$BUILD_DIR/storage.bin" .

echo "Success! The following release files are ready to commit:"
ls -lh *.bin