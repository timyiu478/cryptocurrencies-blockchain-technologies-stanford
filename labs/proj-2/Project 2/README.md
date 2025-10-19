## Q1

https://live.blockcypher.com/btc-testnet/tx/91d2c92beb98b18e72035c232ee6bd33061bd86c4af011a677f3dab4387bd503/

```
$ python3 Q1.py
201 Created
{
  "tx": {
    "block_height": -1,
    "block_index": -1,
    "hash": "91d2c92beb98b18e72035c232ee6bd33061bd86c4af011a677f3dab4387bd503",
    "addresses": [
      "mgoKszfZCoWgtsBtRVK1U1AoeWSubmBSLC",
      "mohjSavDdQYHRYXcS3uS6ttaHP8amyvX78"
    ],
    "total": 10000,
    "fees": 6250,
    "size": 191,
    "vsize": 191,
    "preference": "low",
    "relayed_by": "183.179.132.120",
    "received": "2025-10-18T17:38:20.578662815Z",
    "ver": 1,
    "double_spend": false,
    "vin_sz": 1,
    "vout_sz": 1,
    "confirmations": 0,
    "inputs": [
      {
        "prev_hash": "be76e44f2cbb2692a24b1598d5fbec0b81ac3a36d660c3fbff74164132a784a0",
        "output_index": 0,
        "script": "47304402205129402d3cc41f0327957da27529feaf0a9c1582dbfb732c4858e4718e1a0a3502204cb3e34dda3d524087018fd3886c87f82cc552c4c429bc6c9c5fc9585c4a9e07012102caa690c37545e16b01cb67d47b45f28b7c5729730ae6226a32d2cd953cf7dd69",
        "output_value": 16250,
        "sequence": 4294967295,
        "addresses": [
          "mgoKszfZCoWgtsBtRVK1U1AoeWSubmBSLC"
        ],
        "script_type": "pay-to-pubkey-hash",
        "age": 4737273
      }
    ],
    "outputs": [
      {
        "value": 10000,
        "script": "76a91459cada50314c829e19f5a7786f8ee0d4987f429d88ac",
        "addresses": [
          "mohjSavDdQYHRYXcS3uS6ttaHP8amyvX78"
        ],
        "script_type": "pay-to-pubkey-hash"
      }
    ]
  }
}
```

## Q2

### Q2a

https://live.blockcypher.com/btc-testnet/tx/6a45e09d747f85213b2809194e026f1cb312b51b02dda9f607dadb26f3f1c7b7/

```
$ python3 Q2a.py
201 Created
{
  "tx": {
    "block_height": -1,
    "block_index": -1,
    "hash": "6a45e09d747f85213b2809194e026f1cb312b51b02dda9f607dadb26f3f1c7b7",
    "addresses": [
      "mgoKszfZCoWgtsBtRVK1U1AoeWSubmBSLC"
    ],
    "total": 10000,
    "fees": 6250,
    "size": 174,
    "vsize": 174,
    "preference": "low",
    "relayed_by": "183.179.132.120",
    "received": "2025-10-19T08:03:53.160141752Z",
    "ver": 1,
    "double_spend": false,
    "vin_sz": 1,
    "vout_sz": 1,
    "confirmations": 0,
    "inputs": [
      {
        "prev_hash": "be76e44f2cbb2692a24b1598d5fbec0b81ac3a36d660c3fbff74164132a784a0",
        "output_index": 6,
        "script": "483045022100adcfae6fee1be6616701ae1c71156e7e9bd74d84f7e46d106b09d3590e34f2140220629882e76da5a7f54b81b80cff7dd85196e0dfb2aede134bcb81cebbca2c117f012102caa690c37545e16b01cb67d47b45f28b7c5729730ae6226a32d2cd953cf7dd69",
        "output_value": 16250,
        "sequence": 4294967295,
        "addresses": [
          "mgoKszfZCoWgtsBtRVK1U1AoeWSubmBSLC"
        ],
        "script_type": "pay-to-pubkey-hash",
        "age": 4737273
      }
    ],
    "outputs": [
      {
        "value": 10000,
        "script": "6e935288940087",
        "addresses": null,
        "script_type": "unknown"
      }
    ]
  }
}
```

### Q2b

https://live.blockcypher.com/btc-testnet/tx/44823d8f6515d378f7440e26cba2ce1096ae0df4edde90ef1500cd612d016eae/

```
$ python3 Q2b.py
201 Created
{
  "tx": {
    "block_height": -1,
    "block_index": -1,
    "hash": "44823d8f6515d378f7440e26cba2ce1096ae0df4edde90ef1500cd612d016eae",
    "addresses": [
      "mohjSavDdQYHRYXcS3uS6ttaHP8amyvX78"
    ],
    "total": 100,
    "fees": 9900,
    "size": 87,
    "vsize": 87,
    "preference": "high",
    "relayed_by": "183.179.132.120",
    "received": "2025-10-19T10:12:31.78238852Z",
    "ver": 1,
    "double_spend": false,
    "vin_sz": 1,
    "vout_sz": 1,
    "confirmations": 0,
    "inputs": [
      {
        "prev_hash": "6a45e09d747f85213b2809194e026f1cb312b51b02dda9f607dadb26f3f1c7b7",
        "output_index": 0,
        "script": "5151",
        "output_value": 10000,
        "sequence": 4294967295,
        "script_type": "unknown",
        "age": 4737322
      }
    ],
    "outputs": [
      {
        "value": 100,
        "script": "76a91459cada50314c829e19f5a7786f8ee0d4987f429d88ac",
        "addresses": [
          "mohjSavDdQYHRYXcS3uS6ttaHP8amyvX78"
        ],
        "script_type": "pay-to-pubkey-hash"
      }
    ]
  }
}
```

---

## Q3 - Multi-Sig

### Q3a

https://live.blockcypher.com/btc-testnet/tx/1d0e57b3aa5863c8878c30ab7934b668efa7dd7392b479a6ed11e279acfba852/

```
$ python3 Q3a.py
201 Created
{
  "tx": {
    "block_height": -1,
    "block_index": -1,
    "hash": "1d0e57b3aa5863c8878c30ab7934b668efa7dd7392b479a6ed11e279acfba852",
    "addresses": [
      "mgoKszfZCoWgtsBtRVK1U1AoeWSubmBSLC",
      "zU2CqWLroaBjULvdQJPnUu2QXnCap8ZPGq"
    ],
    "total": 10000,
    "fees": 6250,
    "size": 307,
    "vsize": 307,
    "preference": "low",
    "relayed_by": "183.179.132.120",
    "received": "2025-10-19T08:01:15.132707969Z",
    "ver": 1,
    "double_spend": false,
    "vin_sz": 1,
    "vout_sz": 1,
    "confirmations": 0,
    "inputs": [
      {
        "prev_hash": "be76e44f2cbb2692a24b1598d5fbec0b81ac3a36d660c3fbff74164132a784a0",
        "output_index": 5,
        "script": "483045022100e64937767ddf7918a63b9984d57a198fcc8c48918781dfc816b9e776e667f05c0220399cc58215c7693b966facbf4e1437d6a91dd7995012eef54989ae7d73b1544b012102caa690c37545e16b01cb67d47b45f28b7c5729730ae6226a32d2cd953cf7dd69",
        "output_value": 16250,
        "sequence": 4294967295,
        "addresses": [
          "mgoKszfZCoWgtsBtRVK1U1AoeWSubmBSLC"
        ],
        "script_type": "pay-to-pubkey-hash",
        "age": 4737273
      }
    ],
    "outputs": [
      {
        "value": 10000,
        "script": "2102caa690c37545e16b01cb67d47b45f28b7c5729730ae6226a32d2cd953cf7dd69ad5121028cd8834f37e1c4e14fd1bd0ebcd15a715bf6c1e63662422cf879b8ef75d474d42102453ffc9d50a715e530e5943a9396011a2b4bb49c3e72042d8874307d5b0f55d5210389fc140bbf9a54d4aaa955c03b04f6f6dd64a1f271c596889886f4254e666a9653ae",
        "addresses": [
          "zU2CqWLroaBjULvdQJPnUu2QXnCap8ZPGq"
        ],
        "script_type": "pay-to-multi-pubkey-hash"
      }
    ]
  }
}
```

### Q3b

https://live.blockcypher.com/btc-testnet/tx/3c1fedd67193de2ac90aff40ca952aa184929d1c183f0ad11f1a13f8e231a84d/

```
$ python3 Q3b.py
201 Created
{
  "tx": {
    "block_height": -1,
    "block_index": -1,
    "hash": "3c1fedd67193de2ac90aff40ca952aa184929d1c183f0ad11f1a13f8e231a84d",
    "addresses": [
      "zU2CqWLroaBjULvdQJPnUu2QXnCap8ZPGq",
      "mohjSavDdQYHRYXcS3uS6ttaHP8amyvX78"
    ],
    "total": 100,
    "fees": 9900,
    "size": 231,
    "vsize": 231,
    "preference": "low",
    "relayed_by": "183.179.132.120",
    "received": "2025-10-19T10:14:01.084239947Z",
    "ver": 1,
    "double_spend": false,
    "vin_sz": 1,
    "vout_sz": 1,
    "confirmations": 0,
    "inputs": [
      {
        "prev_hash": "1d0e57b3aa5863c8878c30ab7934b668efa7dd7392b479a6ed11e279acfba852",
        "output_index": 0,
        "script": "0047304402206b1559dba59d11bde61085c1301264a3073c70feb64110bd58b4bc3e30f991c60220337ee9c8bb1f0edbe207ec7e9c23656b11316bee1b2599367803a88b4c4e4042014830450221009b7761c91682ccf620615003a831d257562c449efc03ef5ed560ae5d2a59250b02203931dce6e71f4fcb1b86e599cff7b8041b304c6a5e357c97de11efd90046813101",
        "output_value": 10000,
        "sequence": 4294967295,
        "addresses": [
          "zU2CqWLroaBjULvdQJPnUu2QXnCap8ZPGq"
        ],
        "script_type": "pay-to-multi-pubkey-hash",
        "age": 4737322
      }
    ],
    "outputs": [
      {
        "value": 100,
        "script": "76a91459cada50314c829e19f5a7786f8ee0d4987f429d88ac",
        "addresses": [
          "mohjSavDdQYHRYXcS3uS6ttaHP8amyvX78"
        ],
        "script_type": "pay-to-pubkey-hash"
      }
    ]
  }
}
```

---


## Q4 - Crosschain Atomic Swap

### Core Idea

1. The idea here is to set up transactions around a secret x, that only one party (Alice) knows.
1. In these transactions only H(x) will be published, leaving x secret. Transactions will be set up in such a way that once x is revealed, both parties can redeem the coins sent by the other party.
1. If x is never revealed, both parties will be able to retrieve their original coins safely, without help from the other.

https://en.bitcoin.it/wiki/Atomic_swap

### Run

Success case:

```
$ python3 swap.py
Alice swap tx (BTC) created successfully!
Bob swap tx (BCY) created successfully!
Bob return coins (BCY) tx created successfully!
Alice return coins tx (BTC) created successfully!
```

Redeem case:

```
$ python3 swap.py
Alice swap tx (BTC) created successfully!
Bob swap tx (BCY) created successfully!
Alice redeem from swap tx (BCY) created successfully!
Bob redeem from swap tx (BTC) created successfully!
```

---


## Learning Resource

1. https://www.bitscript.app/sandbox

