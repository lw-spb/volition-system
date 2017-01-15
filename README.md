All that you need to set up a volition system in your private ethereum network.

# 1. Initialize your local ethereum node:

```
geth --datadir data --networkid 1900 init genesis.json
```

# 2. Start geth console:

```
geth --identity 'YOUR_NAME' --datadir data --networkid 1900 --bootnodes enode://0ecccc68434cfc801f9861bef5000e707d39fa355d83b32de276f8d72791d386d69739068016ada8d572c5140d516618cb66e52f50671558465bd00787aa70fc@104.199.46.84:30303 --fast console
```

(this may take a while)

# 3. (Optional) connect to the peer:

```
admin.addPeer("enode://0ecccc68434cfc801f9861bef5000e707d39fa355d83b32de276f8d72791d386d69739068016ada8d572c5140d516618cb66e52f50671558465bd00787aa70fc@104.199.46.84:30303")
```

# 4. Submit the contract defined in `TaskList.sol`
# 5. Enjoy
