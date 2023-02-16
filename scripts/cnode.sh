#!/bin/bash

# Set home directory
NODE=/home/holo/cardano-src

# Configuration & topology file paths
CONFIG=${NODE}/config/config.json
TOP=${NODE}/config/topology.json

# Database & socket paths
DB=${NODE}/db
SOCKET=${DB}/node.socket

# Port to run node on
PORT=6969

# Local IP address 
HOST=0.0.0.0

# Run node
/home/holo/.local/bin/cardano-node run --host-addr ${HOST} --port ${PORT} --database-path ${DB} --socket-path ${SOCKET} --config ${CONFIG} --topology ${TOP}

# Implement lines below to run as core node
# Path to stake pool keys, addresses, and certificates
#POOL=<path to pool directory>
# Additional run command options
#--shelley-kes-key ${POOL}/kes.skey --shelley-vrf-key ${POOL}/vrf.skey --shelley-operational-certificate ${POOL}/op.cert
