#!/usr/bin/env bash

set -x

ADDRESS=$(<address.txt)


./geth --datadir ./data --networkid 123 --nodiscover --maxpeers 0 \
    --nat none \
    --ethash.dagdir $(pwd)/.ethash \
    --mine --minerthreads 1 --etherbase $ADDRESS \
    --rpc \
    --rpcapi "admin,debug,eth,miner,net,personal,rpc,txpool,web3"