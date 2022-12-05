#!/bin/bash

# Set home directory
NODE=/home/holo/cardano-src/

# Configuration & topology file paths
CONFIG=${NODE}/config/config.json
TOP=${NODE}/config/topology.json

# Database & socket paths
DB=${NODE}/db
SOCKET=${DB}/node.socket

# Port to run node on
PORT=6969

# Local IP address (set to 0.0.0.0 to listen on all local addresses)
HOST=0.0.0.0

# Run node
/home/holo/.local/bin/cardano-node run --host-addr ${HOST} --port ${PORT} --database-path ${DB} --socket-path ${SOCKET} --config ${CONFIG} --topology ${TOPO}
