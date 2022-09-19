#!/usr/bin/env bash

exec {{ eth_root }}/go-ethereum/build/bin/geth --{{ eth_network }} \
  --datadir {{ eth_datadir }} --port={{ eth_port }} --maxpeers=200 \
  --http --http.addr={{ eth_http_addr}} --http.port={{ eth_http_port }} --http.api="eth,web3,net,personal" --http.vhosts="*" --http.corsdomain "*" \
  --ws --ws.addr={{ eth_ws_addr }} --ws.port={{ eth_ws_port }}  --ws.api="eth,web3,net,personal" \
  --authrpc.jwtsecret="{{ eth_root }}/jwtsecret"
