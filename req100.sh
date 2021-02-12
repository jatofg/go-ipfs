#!/bin/bash
set -o xtrace
for (( i = 1; i < 99; i++ )); do
    FH=$(./goipfs add -n -Q "/home/tobias/Documents/ipfstest/f${i}.txt")
    ./goipfs get "/ipfs/${FH}"
done