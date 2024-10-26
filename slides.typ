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
    v = _v;
  }

  function add(uint256 x) external returns (uint256) {
    v += x;
    return v;
  }
}
```

== Specification

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
  0x1003e2d20x00000000000000000000000000
  00000000000000000000000000000000000001
  ```
)


== Transactional function calls


= Developer concepts

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

== MEV
