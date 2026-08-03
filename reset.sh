#!/bin/bash
# teardown-cluster.sh

# WORKERS=""
# CONTROL_PLANES="192.168.10.107,192.168.10.108,192.168.10.109"

# # Reset workers first (they are simpler)
# echo "Resetting worker nodes..."
# for node in $WORKERS; do
#     talosctl reset --nodes $node --graceful=false --system-labels-to-wipe STATE --system-labels-to-wipe EPHEMERAL &
# done
# wait

# # Then reset control plane nodes one at a time
# echo "Resetting control plane nodes..."
# for node in $CONTROL_PLANES; do
#     talosctl reset --nodes $node --graceful=false --system-labels-to-wipe STATE --system-labels-to-wipe EPHEMERAL
#     sleep 10
# done

# echo "Cluster teardown complete."

talosctl reset \
  --nodes 192.168.10.107,192.168.10.108,192.168.10.109 \
  --graceful=false \
  --reboot \
  --system-labels-to-wipe STATE \
  --system-labels-to-wipe EPHEMERAL