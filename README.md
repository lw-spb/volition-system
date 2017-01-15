All that you need to set up a volition system in your private ethereum network.

# 1. Initialize your local ethereum node:

```
geth --datadir data --networkid 1900 init genesis.json
```

# 2. Start geth console:

```
geth --identity 'YOUR_NAME' --datadir data --networkid 1900 --bootnodes enode://ebde7e61f4ec551544b683c0eab04908a646c781bc50e93478643a7f39371657f9dbe06b41b801d094f70c00c5168c7395a08ca32a83be8025d76e5b53be51fe@104.199.46.84:30303 --fast console
```

(this may take a while)

# 3. (Optional) connect to the peer:

```
admin.addPeer("enode://ebde7e61f4ec551544b683c0eab04908a646c781bc50e93478643a7f39371657f9dbe06b41b801d094f70c00c5168c7395a08ca32a83be8025d76e5b53be51fe@104.199.46.84:30303")
```

This may be not needed if `--bootnodes` from the start command works correctly (it should)

# 4. Use the contract defined in `TaskList.sol`

Currently it's deployed at this address: `0xf9CA98cEcFCcaDcc510b2cD73b33EeB9aCFf87E3`

With this interface:

```
[ { "constant": false, "inputs": [ { "name": "bountyId", "type": "uint256" } ], "name": "completeBounty", "outputs": [], "payable": false, "type": "function" }, { "constant": false, "inputs": [ { "name": "_name", "type": "string" }, { "name": "_reward", "type": "uint256" } ], "name": "newBounty", "outputs": [], "payable": false, "type": "function" }, { "constant": true, "inputs": [], "name": "countBounties", "outputs": [ { "name": "count", "type": "uint256", "value": "0" } ], "payable": false, "type": "function" }, { "constant": true, "inputs": [ { "name": "", "type": "address" } ], "name": "balanceOf", "outputs": [ { "name": "", "type": "uint256", "value": "0" } ], "payable": false, "type": "function" }, { "constant": true, "inputs": [ { "name": "", "type": "uint256" } ], "name": "bounties", "outputs": [ { "name": "name", "type": "string" }, { "name": "reward", "type": "uint256" }, { "name": "complete", "type": "bool" } ], "payable": false, "type": "function" }, { "anonymous": false, "inputs": [ { "indexed": false, "name": "name", "type": "string" }, { "indexed": false, "name": "reward", "type": "uint256" }, { "indexed": false, "name": "id", "type": "uint256" } ], "name": "NewBounty", "type": "event" }, { "anonymous": false, "inputs": [ { "indexed": false, "name": "id", "type": "uint256" }, { "indexed": false, "name": "completedBy", "type": "address" } ], "name": "BountyComplete", "type": "event" } ]
```

# 5. Enjoy your bounty
