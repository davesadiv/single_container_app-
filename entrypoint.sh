#!/bin/bash
# Start the Cortex XDR service (daemonized)
service trapsd start

# Start Nginx (foreground)
nginx -g 'daemon off;'
