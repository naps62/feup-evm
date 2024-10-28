#import "@preview/touying:0.5.3": *
#import "@preview/codly:1.0.0": *
#import themes.metropolis: *

#show: metropolis-theme.with(
  aspect-ratio: "16-9",
  config-info(
    title: [EVM],
    subtitle: [An (advanced) introduction],
    author: [Miguel Palhas - \@naps62],
  ),
)
#show: codly-init.with()

#title-slide()

#set text(size: 18pt)

= EVM / Solidity intro

== Hello, World

#codly(
  display-icon: false,
  display-name:false,
  zebra-fill:none,
  number-format: (n) => []
)
```solidity
contract Counter {
  uint256 public value;

  constructor(uint256 _v) {
    v = _v
}
```

== Transaction encoding

#table(
  stroke: none,
  row-gutter: 2em,
  columns: (2fr, 4fr),
  text(weight: 800)[Take the function header],
  `function add(uint256 x) external returns (uint256)`,

  text(weight: 800)[Convert to canonical form],
  `add(uint256)`,

  text(weight: 800)[keccak256 hash it],
  `0x1003e2d21e48445eba32f76cea1db2f704e754da30edaf86...`,

  text(weight: 800)[First 4 bytes are the signature],
  `0x1003e2d2`,

  text(weight: 800)[Append RLP-encoded arguments],
  ```
  0x1003e2d2000000000000000000000000000
  0000000000000000000000000000000000001
  ```
)

== Basic ETH transfer

```json
{
  /* 
    origin address is not part of the payload, but is implicitly included in the signature 
    "from": "0x0000000000000000000000000000000000001",
  */
  "to": "0x0000000000000000000000000000000000002",
  "value": "0x100",
  "gas": "0x100000",
  "gasPrice": "0x100",
  "data": "",
  "nonce": "0x0", // Strictly sequential, per sender
  "chainId": "0x1" // Ethereum mainnet
}
```

== Contract deployment

```json
{
  "to": "",
  "value": "0x100",
  "gas": "0x100000",
  "gasPrice": "0x100",
  "data": "0x6080604052...", // init code for the contract
  "nonce": "0x1",
  "chainId": "0x1"
}
```

== Contract interaction

```json
{
  "to": "0x0000000000000000000000000000000000002",
  "value": "0x100",
  "gas": "0x100000",
  "gasPrice": "0x100",
  "data": "0x6080604052...", // calldata
  "nonce": "0x2",
  "chainId": "0x1"
}
```
== Transactional function calls

All transactions are atomic, and will  either:
- succeed (updating the EVM's state), or
- revert (no state changes, except for gas spent by the caller)

There is no no parallelism, txs are strictly ordered within a block.



= Developer concepts

== EIPs

The formal process of proposing new features or standards for EVM contracts. Some examples:

=== EIP-20

- EIP-155: include chainId in transaction payload (avoid replay attacks)

== Permissions
== Re-entrancy
== Testing
== Fork Testing
== Anvil Cheatcodes

= MEV (and other topics)

== Flash boys (Wall street)
== Flash boys 2.0
== Frontrun attacks
== Sandwich attacks
== The Dark Forest
