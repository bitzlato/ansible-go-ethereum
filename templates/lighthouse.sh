#!/usr/bin/env bash

exec {{ eth_root }}/{{ lth_repo_dir }}/target/release/lighthouse \
     --network mainnet \
     --debug-level info \
     beacon_node \
     --datadir "{{ lth_data }}" \
     --eth1 \
     --http \
     --metrics \
     --execution-endpoints="http://127.0.0.1:8551" \
     --enr-udp-port=9000 \
     --enr-tcp-port=9000 \
     --discovery-port=9000 \
     --execution-jwt="{{ eth_root }}/jwtsecret"
