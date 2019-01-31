#!/bin/bash

for file in $(ls -1 /tftpboot/pxelinux.cfg/01* /tftpboot/pxelinux.cfg/default) ; do
  grep 'NFSROOT=relay.local' $file 2>/dev/null || ( sed -r -i -e 's/NFSROOT=[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+:/NFSROOT=relay.local:/' $file && echo "Updated NFSROOT for $file" )
done
